@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Product Details</h2>
    <div class="card">
        <div class="card-body">
            <h3>{{ $product->name }}</h3>
            <p><strong>Product ID:</strong> {{ $product->product_id }}</p>
            <p><strong>Price:</strong> {{ number_format($product->price, 2) }} Tk</p>
            <p><strong>Description:</strong> {{ $product->description ?? 'No description provided' }}</p>
            <p><strong>Stock:</strong> {{ $product->stock ?? 'Not specified' }}</p>

            @if ($product->image)
                <div class="mb-3">
                    <img src="{{ asset('storage/' . $product->image) }}" alt="{{ $product->name }}" width="250">
                </div>
            @else
                <p><strong>Image:</strong> No image available</p>
            @endif

            <a href="{{ route('products.index') }}" class="btn btn-secondary">Back to Product List</a>
            <a href="{{ route('products.edit', $product->id) }}" class="btn btn-primary">Edit</a>

            <form action="{{ route('products.destroy', $product->id) }}" method="POST" class="d-inline">
                @csrf
                @method('DELETE')
                <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this product?');">Delete</button>
            </form>
        </div>
    </div>
</div>
@endsection
