## Enclosure

The enclosure for the physical SSS is made out of two an acryllic (**NOT POLYCARBONATE**) plexiglass fastened together by 18 x M3 screws in a 20mm standoff. The SVG files in [hw/enclosure](https://github.com/NET-BYU/sss/tree/docs/hw/enclosure) can be loaded onto a plasma/laser cutter to create the pieces.

### Front Piece
The shape and the mounting holes are seen in this figure below:

![enclosure-front-sss](../assets/enclosure-front-sss.svg)

### Back Piece
The shape and the mounting holes are also seen on this piece. The upper group of 4 holes in the center allows for the mounting of a Raspberry Pi. The lower five are mounting holes for the [power and breakout board](Power%20Board.md). The slender slots allow for [resistors soldered to the `clk` and `din` pins](Panel.md) to poke out while the larger openings allow for the commnication and power cable to plug into the SSS's panels.

![enclosure-back-sss](../assets/enclosure-back-sss.svg)

## Feet

The feet for the SSS are 3D printed pieces that allow for each panel (both front and back) to insert and stand inside it. The more feet are put on the bottom of the enclosure, the more stable it will be.

<script async src="https://unpkg.com/es-module-shims@1.3.6/dist/es-module-shims.js"></script>

<script type="importmap">
    {
        "imports": {
            "three": "../../assets/three.module.js"
        }
    }
</script>

<script type="module">

    import * as THREE from 'three';

    import { OrbitControls } from '../../assets/OrbitControls.js';
    import { ThreeMFLoader } from '../../assets/3MFLoader.js';

    let camera, scene, renderer, object, loader, controls;

    var container = document.getElementById('camera-lid');

    init();

    function init() {

        renderer = new THREE.WebGLRenderer( { antialias: true, alpha: true } );
        renderer.setPixelRatio( window.devicePixelRatio );
        renderer.setSize( 500, 500 );
        renderer.setClearColor( 0x000000, 0 ); // the default
        container.appendChild( renderer.domElement );
        renderer.domElement.style.cursor = "grab";


        scene = new THREE.Scene();

        scene.add( new THREE.AmbientLight( 0xffffff, 0.2 ) );

        camera = new THREE.PerspectiveCamera( 15, window.innerWidth / window.innerHeight, 1, 500 );

        // Z is up for objects intended to be 3D printed.

        camera.up.set( 0, 0, 1 );
        camera.position.set( - 100, - 250, 100 );
        scene.add( camera );

        controls = new OrbitControls( camera, renderer.domElement );
        controls.addEventListener( 'change', render );
        controls.minDistance = 50;
        controls.maxDistance = 400;
        controls.enablePan = false;
        controls.update();

        const pointLight = new THREE.PointLight( 0xffffff, 0.8 );
        camera.add( pointLight );

        const manager = new THREE.LoadingManager();

        manager.onLoad = function () {

            const aabb = new THREE.Box3().setFromObject( object );
            const center = aabb.getCenter( new THREE.Vector3() );

            object.position.x += ( object.position.x - center.x );
            object.position.y += ( object.position.y - center.y );
            object.position.z += ( object.position.z - center.z );

            controls.reset();

            scene.add( object );
            render();

        };

        loader = new ThreeMFLoader( manager );
        loadAsset( '../../assets/cam-lid-sss.3mf' );

        // window.addEventListener( 'resize', onWindowResize );

    }

    function loadAsset( asset ) {

        loader.load( asset, function ( group ) {

            if ( object ) {

                object.traverse( function ( child ) {

                    if ( child.material ) child.material.dispose();
                    if ( child.material && child.material.map ) child.material.map.dispose();
                    if ( child.geometry ) child.geometry.dispose();

                } );

                scene.remove( object );

            }

            object = group;

        } );

    }

    function onWindowResize() {

        camera.aspect = window.innerWidth / window.innerHeight;
        camera.updateProjectionMatrix();

        renderer.setSize( window.innerWidth, window.innerHeight );

        render();

    }

    function render() {

        renderer.render( scene, camera );

    }

</script>

<div id="camera-lid"></div>