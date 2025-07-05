from setuptools import setup

package_name = 'collision_avoid_pkg'

setup(
    name=package_name,
    version='0.0.0',
    packages=[package_name],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='Your Name',
    maintainer_email='you@example.com',
    description='Test collision avoid package',
    license='Apache License 2.0',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
            'collision_avoid = collision_avoid_pkg.collision_avoid_node:main',
            'test_collision_avoid = collision_avoid_pkg.test_collision_avoid:main',
        ],
    },
)
