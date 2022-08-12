The camera module exists thanks to the creative camera demo. While any camera which streams to an IP address will work with the demo, we have provided an inexpensive option that can integrate nicely with the SSS. This module is centered around the ESP-CAM kit and it's firmware. An optional set of pins was included in the design to allow for a peripheral to connect to the camera if necessary. All of these files are available in the [hw/camera]() directory of the project.

## Camera PCB Blueprints

### Backpack Schematic

![backpack-sch](camera-schematic.png)

### Backpack PCB

![backpack-pcb](camera-pcb.png)

## Camera Enclosure

### Lid

<!-- Import maps polyfill -->
<!-- Remove this when import maps will be widely supported -->
<script async src="https://unpkg.com/es-module-shims@1.3.6/dist/es-module-shims.js"></script>

<script type="importmap">
    {
        "imports": {
            "three": "../../three.module.js"
        }
    }
</script>

<script type="module">

    import * as THREE from 'three';

    import { OrbitControls } from '../../OrbitControls.js';
    import { ThreeMFLoader } from '../../3MFLoader.js';

    let camera, scene, renderer, object, loader, controls;

    var container = document.getElementById('camera-lid');

    const params = {
        asset: 'cam-lid-sss'
    };

    const assets = [
        'cam-lid-sss',
    ];

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
        loadAsset( params.asset );

        // window.addEventListener( 'resize', onWindowResize );

    }

    function loadAsset( asset ) {

        loader.load( '../cam-lid-sss.3mf', function ( group ) {

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

<script type="module">

    import * as THREE from 'three';

    import { OrbitControls } from '../../OrbitControls.js';
    import { ThreeMFLoader } from '../../3MFLoader.js';

    let camera, scene, renderer, object, loader, controls;

    var container = document.getElementById('camera-body');

    const params = {
        asset: 'cam-case-sss'
    };

    const assets = [
        'cam-case-sss',
    ];

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
        loadAsset( params.asset );

        // window.addEventListener( 'resize', onWindowResize );

    }

    function loadAsset( asset ) {

        loader.load( '../cam-case-sss.3mf', function ( group ) {

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

<span>
<div id="camera-lid"></div>

### Case

<div id="camera-body"></div>
</span>