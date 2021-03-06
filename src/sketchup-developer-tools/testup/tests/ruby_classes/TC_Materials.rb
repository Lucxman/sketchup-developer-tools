# Copyright:: Copyright 2012 Trimble Navigation Ltd.
# License:: Apache License version 2.0
# Original Author:: Scott Lininger 
#
# Tests the SketchUp Ruby API Materials object.
#
# This file was originally generated by ourdoc.rb, an internal tool we developed
# specifically for outputting support files (documentation, unit tests, etc.)
# from the standard, doxygen-style c++ comments that are embedded into the
# Ruby implementation files. You can find ourdoc.rb alongside these
# implementation files at:
#
# googleclient/sketchup/source/sketchup/ruby
#

require 'test/unit'

# TC_Materials contains unit tests for the Materials class.
#
# API Object::       Materials
# C++ File::         rmaterial.cpp
# Parent Class::     Entity
# Version::          SketchUp 6.0
#
# A collection of Materials objects.
#
class TC_Materials < Test::Unit::TestCase

  # Setup for test cases, if required.
  #
  def setup
    def UI::messagebox(params)
      puts 'TESTUP OVERRIDE: UI::messagebox > ' + params.to_s
    end
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Materials.purge_unused
  # @file                rmaterial.cpp
  #
  # The purge_unused method is used to remove unused materials.
  #
  #
  # Args:
  #
  # Returns:
  # - status: true if successful, false if unsuccessful.
  #

  # Test the example code that we have in the API documentation.
  def test_purge_unused_api_example
    Sketchup.active_model.start_operation "test_purge_unused_api_example"
    materials = Sketchup.active_model.materials
    assert_nothing_raised do
      status = materials.purge_unused
    end
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

  # Test edgecases for values passed to this method.
  def test_purge_unused_edgecases
    Sketchup.active_model.start_operation "test_purge_unused_edgecases"
    materials = Sketchup.active_model.materials
    materials.purge_unused
    pre_length = materials.length
    materials.add "Joe"
    materials.purge_unused
    post_length = materials.length
    assert_equal(pre_length, post_length,
                 'Failed in test_purge_unused_edgecases' )
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  #def test_purge_unused_bad_params
  #  Sketchup.active_model.start_operation "test_purge_unused_bad_params"
  #  assert_raise RuntimeError do
  #    # bad arguments here that should cause errors
  #  end
  #  Sketchup.active_model.commit_operation
  #end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Materials.at
  # @file                rmaterial.cpp
  #
  # The at method is an alias for []. See [].
  #
  #
  # Args:
  #
  # Returns:
  # - : nil
  #

  # Test the example code that we have in the API documentation.
  def test_at_api_example
    Sketchup.active_model.start_operation "test_at_api_example"
    assert_nothing_raised do
    materials = Sketchup.active_model.materials
    material = materials.at 0
    end
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

  # Test edgecases for values passed to this method.
  def test_at_edgecases
    Sketchup.active_model.start_operation "test_at_edgecases"
    materials = Sketchup.active_model.materials
    material = materials.at 0
    assert_not_equal(nil, material,
                 'Failed in test_at_edgecases' )
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

  # Test edgecases for values passed to this method.
  def test_at_edgecases_negative
    Sketchup.active_model.start_operation "test_at_edgecases_negative"
    materials = Sketchup.active_model.materials
    material = materials.at 0
    expected = materials[0]
    assert_equal(expected, material,
                     'Failed in test_at_edgecases' )
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  # Note passing a bad index raises an IndexError exception.
  def test_at_bad_params
    Sketchup.active_model.start_operation "test_at_bad_params"
    collection = Sketchup.active_model.materials
    assert_raise IndexError do
      # bad arguments here that should cause errors
      collection.at collection.length
    end
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Materials.add_observer
  # @file                rmaterial.cpp
  #
  # The add_observer method is used to add an observer to the current
  # object.
  #
  #
  # Args:
  # - observer: An observer.
  #
  # Returns:
  # - : true if successful, false if unsuccessful.
  #

  # Test the example code that we have in the API documentation.
  def test_add_observer_api_example
    Sketchup.active_model.start_operation "test_add_observer_api_example"
    materials_object = Sketchup.active_model.materials
    my_observer = "InitializeAndAddAnObserverHere"
    assert_nothing_raised do
      materials_object.add_observer my_observer
    end
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

  # Test edgecases for values passed to this method.
  #def test_add_observer_edgecases
  #  Sketchup.active_model.start_operation "test_add_observer_edgecases"
  #  assert_equal('expected', 'result',
  #               'Failed in test_add_observer_edgecases' )
  #  Sketchup.active_model.commit_operation
  #end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  #def test_add_observer_bad_params
  #    Sketchup.active_model.start_operation "test_add_observer_bad_params"
  #    assert_raise RuntimeError do
  #    # bad arguments here that should cause errors
  #  end
  #  Sketchup.active_model.commit_operation
  #end


  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Materials.current
  # @file                rmaterial.cpp
  #
  # The current method is used to get the current material.
  #
  #
  # Args:
  #
  # Returns:
  # - material: a Material object.
  #

  # Test the example code that we have in the API documentation.
  def test_current_api_example
    Sketchup.active_model.start_operation "test_current_api_example"
    materials = Sketchup.active_model.materials
    assert_nothing_raised do
      current_material = materials.current
    end
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

  # Test edgecases for values passed to this method.
  def test_current_edgecases
    Sketchup.active_model.start_operation "test_current_edgecases"
    materials = Sketchup.active_model.materials
    current_material = materials.current
    result = false
    materials.each do |m|
      if m.name == current_material.name
        result = true
      end
    end
    assert_equal(true, result,
                 'Failed in test_current_edgecases' )
   Sketchup.active_model.commit_operation
   Sketchup.undo
  end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  #def test_current_bad_params
  #  Sketchup.active_model.start_operation "test_current_bad_params"
  #  assert_raise RuntimeError do
  #    # bad arguments here that should cause errors
  #  end
  #  Sketchup.active_model.commit_operation
  #end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Materials.count
  # @file                rmaterial.cpp
  #
  # The count method is an alias for length. See length.
  #
  #
  # Args:
  #
  # Returns:
  # - count: number of materials in the collection.
  #

  # Test the example code that we have in the API documentation.
  def test_count_api_example
    Sketchup.active_model.start_operation "test_count_api_example"
    materials = Sketchup.active_model.materials
    assert_nothing_raised do
      # Need example ruby code here.
      count = materials.count
    end
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

  # Test edgecases for values passed to this method.
  def test_count_edgecases
    Sketchup.active_model.start_operation "test_count_edgecases"
    materials = Sketchup.active_model.materials
    first_count = materials.count
    materials.add "Simone"
    final_count = materials.count
    assert_equal(first_count + 1, final_count,
                 'Failed in test_count_edgecases' )
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  #def test_count_bad_params
  #  Sketchup.active_model.start_operation "test_count_bad_params"
  #  assert_raise RuntimeError do
  #    # bad arguments here that should cause errors
  #  end
  #  Sketchup.active_model.commit_operation
  #end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Materials.each
  # @file                rmaterial.cpp
  #
  # The each method is used to iterate through all of the materials.
  #
  #
  # Args:http://icanread/s/bbrazil
  # - material: A variable that will hold each Material object as they are
  # found.
  #
  # Returns:
  # - material: a Material object
  #

  # Test the example code that we have in the API documentation.
  def test_each_api_example
    Sketchup.active_model.start_operation "test_each_api_example"
    assert_nothing_raised do
      model = Sketchup.active_model
      materials = model.materials

      # Adds a material to the "in-use" material pallet.
      m = materials.add "Joe"

      # Returns nil if not successful, path if successful.
      # Should return a texture object.
      m.texture="c:\\Materials\\Carpet.jpg"
      texture = m.texture
      materials.each {| material | UI.messagebox material}
    end
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

  # Test edgecases for values passed to this method.
  #def test_each_edgecases
  #  assert_equal('expected', 'result',
  #               'Failed in test_each_edgecases' )
  #end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  #def test_each_bad_params
  #  assert_raise RuntimeError do
  #    # bad arguments here that should cause errors
  #  end
  #end

  # Test that the number of iterations is equal to the reported length.
  def test_each_iterations_matches_length
    Sketchup.active_model.start_operation "test_each_iterations_matches_length"
    collection = Sketchup.active_model.materials
    count = 0
    collection.each do |obj|
      count = count + 1
    end
    expected = collection.length
    result = count
    assert_equal(expected, result, 'Expected does not match result.')
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end


  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Materials.[]
  # @file                rmaterial.cpp
  #
  # The [] method is used to retrieve a material by index or name.
  #
  #
  # Args:
  # - index: A number representing the material's index in an array of
  # Material objects.
  # - name: The name of the material.
  #
  # Returns:
  # - material: a Material object
  #

  # Test the example code that we have in the API documentation.
  def test_arrayget_api_example
    Sketchup.active_model.start_operation "test_arrayget_api_example"
    assert_nothing_raised do
      model = Sketchup.active_model
      materials = model.materials

      # Adds a material to the "in-use" material pallet.
      m = materials.add "Joe"

      # Returns nil if not successful, path if successful.
      # Should return a texture object.
      m.texture="c:\\Materials\\Carpet.jpg"
      texture = m.texture
      mat = materials[0]
    end
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

#  # Test edgecases for values passed to this method.
#  def test_arrayget_edgecases
#    assert_equal('expected', 'result',
#                 'Failed in test_arrayget_edgecases' )
#  end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  def test_arrayget_bad_params
    Sketchup.active_model.start_operation "test_arrayget_api_badparams"
    model = Sketchup.active_model
    materials = model.materials
    assert_raise IndexError do
      material = materials[materials.length]
    end
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

  # Test that nil is returned if there is a negative index requested.
  # NOTE: what gets returned is the material at length - negative index
  def test_arrayget_nil_on_negative_index
    Sketchup.active_model.start_operation "test_arrayget_nil_on_negative_index"
    collection = Sketchup.active_model.materials
    size = collection.length
    expected = collection[size - 1]
    result = collection[-1]
    assert_equal(expected, result,
                 'Expected does not match result.')
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Materials.length
  # @file                rmaterial.cpp
  #
  # The number of materials in the collection.
  #
  #
  # Args:
  #
  # Returns:
  # - count: number of materials in the collection.
  #

  # Test the example code that we have in the API documentation.
  def test_length_api_example
    Sketchup.active_model.start_operation "test_length_api_example"
    model = Sketchup.active_model
    materials = model.materials
    assert_nothing_raised do
      length = materials.length
    end
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

#  # Test edgecases for values passed to this method.
#  def test_length_edgecases
#    raise('AUTOGENERATED STUB. Do manual review, then delete this warning.')
#    assert_equal('expected', 'result',
#                 'Failed in test_length_edgecases' )
#  end

#  # Test what happens when bad arguments are passed (nil, too few, etc.)
#  def test_length_bad_params
#    raise('AUTOGENERATED STUB. Do manual review, then delete this warning.')
#    assert_raise RuntimeError do
#      # bad arguments here that should cause errors
#    end
#  end


  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Materials.add
  # @file                rmaterial.cpp
  #
  # Add a new Material. When called with no arguments, this will generate
  # a new unique name for the new Material. If a name is given, it will
  # check to see if there is already a material with that name. If there
  # is already a material with the given name, then a new unique name is
  # gnerated using the given name as a base.
  #
  #
  # Args:
  # - name: The name of the new material.
  #
  # Returns:
  # - material: a Material object
  #

  # Test the example code that we have in the API documentation.
  def test_add_api_example
    Sketchup.active_model.start_operation "test_add_api_example"
    model = Sketchup.active_model
    materials = model.materials

    assert_nothing_raised do
     # Adds a material to the "in-use" material pallet.
     m = materials.add "Joe"
    end
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

#  # Test edgecases for values passed to this method.
#  def test_add_edgecases
#    raise('AUTOGENERATED STUB. Do manual review, then delete this warning.')
#    assert_equal('expected', 'result',
#                 'Failed in test_add_edgecases' )
#  end

#  # Test what happens when bad arguments are passed (nil, too few, etc.)
#  def test_add_bad_params
#    raise('AUTOGENERATED STUB. Do manual review, then delete this warning.')
#    assert_raise RuntimeError do
#      # bad arguments here that should cause errors
#    end
#  end


  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Materials.current=
  # @file                rmaterial.cpp
  #
  # The current= method is used to set the current material.
  #
  #
  # Args:
  # - material: A Material object.
  #
  # Returns:
  # - : true if successful, false if unsuccessful.
  #

  # Test the example code that we have in the API documentation.
  def test_set_current_api_example
    Sketchup.active_model.start_operation "test_set_current_api_example"
    model = Sketchup.active_model
    materials = model.materials

    # Adds a material to the "in-use" material pallet.
    m = materials.add "Joe"

    assert_nothing_raised do
    materials.current = materials[0]
    end
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

  # Test edgecases for values passed to this method.
  def test_set_current_edgecases
    Sketchup.active_model.start_operation "test_set_current_edgecases"
    model = Sketchup.active_model
    materials = model.materials

    # Adds a material to the "in-use" material pallet.
    m = materials.add "Joe"

    expected_material = materials[0]
    materials.current = materials[0]
    assert_equal(expected_material, materials.current,
                 'Failed in test_set_current_edgecases' )
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

  # Test what happens when bad arguments are passed (nil, too few, etc.)
  #def test_set_current_bad_params
  #  raise('AUTOGENERATED STUB. Do manual review, then delete this warning.')
  #  assert_raise RuntimeError do
  #    # bad arguments here that should cause errors
  #  end
  #end

  # ----------------------------------------------------------------------------
  # @par Ruby Method:    Materials.remove_observer
  # @file                rmaterial.cpp
  #
  # The remove_observer method is used to remove an observer from the materials
  # collection.
  #
  #
  # Args:
  # - observer: An observer.
  #
  # Returns:
  # - : true if successful, false if unsuccessful.
  #

  # Test the example code that we have in the API documentation.
  def test_remove_observer_api_example
    Sketchup.active_model.start_operation "test_remove_observer_api_example"

    materials_object = Sketchup.active_model.materials
    my_observer = "InitializeAndAddAnObserverHere"
    materials_object.add_observer my_observer

    status = materials_object.remove_observer nil
    assert_equal(status, false, "Failed in test_remove_observer_api_example")

    status = materials_object.remove_observer my_observer
    assert_equal(status, true, "Failed in test_remove_observer_api_example")
    Sketchup.active_model.commit_operation
    Sketchup.undo
  end

  # Test materials.remove
  def test_materials_remove
    model = Sketchup.active_model
    materials = model.materials

    # Adds a material to the "in-use" material pallet.
    m = materials.add "Joe"
    status = materials.remove m
    assert_equal(status, true, "Failed in test_materials_remove")
    status = materials.remove m
    assert_equal(status, false, "Failed in test_materials_remove")
  end

end
