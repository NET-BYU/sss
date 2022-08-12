The purpose of a camera module exists thanks mainly thanks to the creative camera demo by [Bryson Schiel](https://www.linkedin.com/in/bryson-s-82926aa6/). While any camera which streams to an IP address will work with the demo, we have provided an inexpensive option which integrates nicely with the SSS. This module is centered around the ESP-CAM kit and it's firmware. All of these files are available in the [hw/camera](https://github.com/NET-BYU/sss/tree/docs/hw/camera) directory of the project. All of these files were designed and provided by [Carter Pollan](https://github.com/virginia2244).

## Camera PCB Blueprints

### Backpack Schematic
The ESP-CAM normally comes with its own backpack which provides power. An optional set of pins was included in the design to allow for a peripheral to connect to the camera if necessary. The backpack that we have provides power and also a breakout to connect devices to some of the GPIO pins.

![backpack-sch](../assets/camera-schematic.png)

### Backpack PCB
This PCB is single-sided and has no vias which means that it can be etched on the most simple of mills. It also features some groovy, curved traces for a nice aesthetic. [Check this video out](https://youtu.be/euJgtLcWWyo) to see why melty boards are superior.

![backpack-pcb](../assets/camera-pcb.png)

## Camera Enclosure

For those who aren't a big fan of have a jumbled mess of wires and PCBs, a sleek two piece case has also been designed to encapsulate and mount the camera module.  

### Lid

<!-- Import maps polyfill -->
<!-- Remove this when import maps will be widely supported -->
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

<script type="module">

    import * as THREE from 'three';

    import { OrbitControls } from '../../assets/OrbitControls.js';
    import { ThreeMFLoader } from '../../assets/3MFLoader.js';

    let camera, scene, renderer, object, loader, controls;

    var container = document.getElementById('camera-body');

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
        loadAsset( '../../assets/cam-case-sss.3mf' );

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

<span>
<div id="camera-lid"></div>

### Case

<div id="camera-body"></div>
</span>