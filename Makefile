all:
	mkdir -p example-1/build
	cd example-1/build && cmake ..
	cd example-1/build && make -j8
	cd example-1/build && make -j8 example1.analyze

	mkdir -p example-2/build
	cd example-2/build && cmake ..
	cd example-2/build && make -j8
	cd example-2/build && make -j8 example2.analyze

	mkdir -p example-3/build
	cd example-3/build && cmake ..
	cd example-3/build && make -j8
	cd example-3/build && make -j8 example3.analyze

	mkdir -p example-4/build
	cd example-4/build && cmake ..
	cd example-4/build && make -j8
	cd example-4/build && make -j8 example4.analyze

	mkdir -p example-5/build
	cd example-5/build && cmake ..
	cd example-5/build && make -j8
	cd example-5/build && make -j8 example5.analyze

	mkdir -p example-6/build
	cd example-6/build && cmake -G Ninja ..
	cd example-6/build && ninja

	mkdir -p example-7/build
	cd example-7/build && cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=On ..
	cd example-7/build && make -j8
	cd example-7/build && make -j8 pvs-studio-cmake-example-7

	mkdir -p example-8/build
	cd example-8/build && cmake ..
	cd example-8/build && make -j8
	cd example-8/build && make -j8 pvs-studio-cmake-example-8

	mkdir -p example-9/build
	cd example-9/build && cmake ..
	cd example-9/build && make -j8
	cd example-9/build && make -j8 pvs-studio-cmake-example-9

	mkdir -p example-10/build
	cd example-10/build && cmake ..
	cd example-10/build && make -j8
	cd example-10/build && make -j8 pvs-studio-cmake-example-10

	mkdir -p example-11/build
	cd example-11/build && cmake ..
	cd example-11/build && make -j8
	cd example-11/build && make -j8 pvs-studio-cmake-example-11

	mkdir -p example-12/build
	cd example-12/build && cmake ..
	cd example-12/build && make -j8
	cd example-12/build && make -j8 pvs-studio-cmake-example-12
	
	mkdir -p example-13/build
	cd example-13/build && cmake ..
	cd example-13/build && make -j8
	cd example-13/build && make -j8 pvs-studio-cmake-example-13

clean:
	rm -rf example-1/build
	rm -rf example-2/build
	rm -rf example-3/build
	rm -rf example-4/build
	rm -rf example-5/build
	rm -rf example-6/build
	rm -rf example-7/build
	rm -rf example-8/build
	rm -rf example-9/build
	rm -rf example-10/build
	rm -rf example-11/build
	rm -rf example-12/build