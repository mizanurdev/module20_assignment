@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Product List</h2>
    
    <!-- Search Form -->
    <form action="{{ route('products.index') }}" method="GET" class="mb-4">
        <div class="row">
            <div class="col-md-4">
                <input type="text" name="search" class="form-control" placeholder="Search by Product ID or Description" value="{{ request()->search }}">
            </div>
            <div class="col-md-2">
                <button type="submit" class="btn btn-primary">Search</button>
            </div>
            <div class="col-md-6 text-end">
                <a href="{{ route('products.create') }}" class="btn btn-success">Add New Product</a>
            </div>
        </div>
    </form>
    
    <!-- Sort Links -->
    <div class="mb-4">
        <strong>Sort By:</strong>
        <a href="{{ route('products.index', ['sort_by' => 'name', 'order' => request()->order === 'asc' ? 'desc' : 'asc', 'search' => request()->search]) }}">
            Name {{ request()->sort_by === 'name' && request()->order === 'asc' ? '↓' : '↑' }}
        </a> |
        <a href="{{ route('products.index', ['sort_by' => 'price', 'order' => request()->order === 'asc' ? 'desc' : 'asc', 'search' => request()->search]) }}">
            Price {{ request()->sort_by === 'price' && request()->order === 'asc' ? '↓' : '↑' }}
        </a>
    </div>

    <!-- Products Table -->
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Sl</th>
                <th>Image</th>
                <th>Product ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Stock</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($products as $product)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>
                        @if($product->image)
                            <img src="{{ asset('storage/' . $product->image) }}" alt="{{ $product->name }}" width="50">
                        @else
                            No Image
                        @endif
                    </td>
                    <td>{{ $product->product_id }}</td>
                    <td>{{ $product->name }}</td>
                    <td>{{ Str::limit($product->description, 50) }}</td>
                    <td>{{ number_format($product->price, 2) }} Tk</td>
                    <td>{{ $product->stock ?? 'N/A' }}</td>
                    <td>
                        <a href="{{ route('products.show', $product->id) }}" class="btn btn-info btn-sm">View</a>
                        <a href="{{ route('products.edit', $product->id) }}" class="btn btn-primary btn-sm">Edit</a>
                        <form action="{{ route('products.destroy', $product->id) }}" method="POST" class="d-inline">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this product?');">Delete</button>
                        </form>
                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="7" class="text-center">No products found</td>
                </tr>
            @endforelse
        </tbody>
    </table>

    <!-- Pagination -->
    <div class="">
        {{ $products->links('pagination::bootstrap-5') }}
    </div>
</div>
@endsection
