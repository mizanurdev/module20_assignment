@extends('layouts.app')

@section('content')
<h2>Edit Product</h2>
<form action="{{ route('products.update', $product->id) }}" class="my-5" method="POST" enctype="multipart/form-data">
    @csrf
    @method('PUT')

    <div class="mb-3">
        <label>Product ID</label>
        <input type="text" name="product_id" class="form-control" value="{{ old('product_id', $product->product_id) }}" required>
    </div>
    
    <div class="mb-3">
        <label>Name</label>
        <input type="text" name="name" class="form-control" value="{{ old('name', $product->name) }}" required>
    </div>
    
    <div class="mb-3">
        <label>Price</label>
        <input type="number" name="price" class="form-control" step="0.01" value="{{ old('price', $product->price) }}" required>
    </div>
    
    <div class="mb-3">
        <label>Description</label>
        <textarea name="description" class="form-control">{{ old('description', $product->description) }}</textarea>
    </div>
    
    <div class="mb-3">
        <label>Stock</label>
        <input type="number" name="stock" class="form-control" value="{{ old('stock', $product->stock) }}">
    </div>

    <div class="mb-3">
        <label>Image</label>
        <input type="file" name="image" class="form-control">
        
        @if ($product->image)
            <div class="mt-2">
                <img src="{{ asset('storage/' . $product->image) }}" alt="{{ $product->name }}" width="150">
            </div>
            <small>Leave blank if you don't want to change the image</small>
        @endif
    </div>

    <button type="submit" class="btn btn-primary">Update</button>
</form>
@endsection
