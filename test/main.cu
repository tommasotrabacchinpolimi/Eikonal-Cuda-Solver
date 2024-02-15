#include "Mesh.cu"

int main() {
    Mesh<3> mesh("../test/meshes/input_meshes/cube-20.vtk", 4);
    std::cout << mesh.getNumberVertices() << std::endl;
    int* sol;
    sol = new int[mesh.getNumberVertices()];
    memset(sol, 0, mesh.getNumberVertices()* sizeof(int));
    mesh.getSolutionsVTK("../test/meshes/output_meshes/cube-20-new.vtk", sol);
    return 0;
}