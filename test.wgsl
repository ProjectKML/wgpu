struct VertexOut {
    @builtin(position) position: vec4<f32>,
    @location(0) color: vec3<f32>
};

@mesh(triangles)
@workgroup_size(1, 1, 1)

fn main(m: mesh<VertexOut, vec3u, 3, 3>) {
    m.set_output_size(3, 3);

    Vertex vertex;
    vertex.position = vec4<f32>(-0.5, 0.5, 0.0, 1.0);
    vertex.color = vec3<f32>(1.0, 0.0, 0.0);
    m.set_vertex(0, vertex);

    vertex.position = vec4<f32>(0.5, 0.5, 0.0, 1.0);
    vertex.color = vec3<f32>(0.0, 1.0, 0.0);
    m.set_vertex(1, vertex);

    vertex.position = vec4<f32>(0.0, -0.5, 0.0, 1.0);
    vertex.color = vec3<f32>(0.0, 0.0, 1.0);
    m.set_vertex(2, vertex);

    m.set_indices(0, vec3u(0, 1, 2));
}