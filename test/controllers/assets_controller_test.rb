require 'test_helper'

class AssetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asset = assets(:one)
  end

  test "should get index" do
    get assets_url
    assert_response :success
  end

  test "should get new" do
    get new_asset_url
    assert_response :success
  end

  test "should create asset" do
    assert_difference('Asset.count') do
      post assets_url, params: { asset: { brand: @asset.brand, has_warranty: @asset.has_warranty, model: @asset.model, price: @asset.price, product_name: @asset.product_name, purchased_date: @asset.purchased_date, shop_name: @asset.shop_name, warranty_void_date: @asset.warranty_void_date, year: @asset.year } }
    end

    assert_redirected_to asset_url(Asset.last)
  end

  test "should show asset" do
    get asset_url(@asset)
    assert_response :success
  end

  test "should get edit" do
    get edit_asset_url(@asset)
    assert_response :success
  end

  test "should update asset" do
    patch asset_url(@asset), params: { asset: { brand: @asset.brand, has_warranty: @asset.has_warranty, model: @asset.model, price: @asset.price, product_name: @asset.product_name, purchased_date: @asset.purchased_date, shop_name: @asset.shop_name, warranty_void_date: @asset.warranty_void_date, year: @asset.year } }
    assert_redirected_to asset_url(@asset)
  end

  test "should destroy asset" do
    assert_difference('Asset.count', -1) do
      delete asset_url(@asset)
    end

    assert_redirected_to assets_url
  end
end
