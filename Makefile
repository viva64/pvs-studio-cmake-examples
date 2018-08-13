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
	cd example-6/build && make -j8
	cd example-6/build && make -j8 pvs-studio-cmake-example-6

clean:
	rm -rf example-1/build
	rm -rf example-2/build
	rm -rf example-3/build
	rm -rf example-4/build
	rm -rf example-5/build
	rm -rf example-6/build
