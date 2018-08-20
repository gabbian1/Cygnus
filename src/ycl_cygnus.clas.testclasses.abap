*"* use this source file for your ABAP unit test classes
CLASS test_cygnus DEFINITION FINAL FOR TESTING DURATION SHORT RISK LEVEL HARMLESS CREATE PRIVATE.
  PRIVATE SECTION.
    METHODS:
      t01_trim         FOR TESTING,
      t02_equals_true  FOR TESTING,
      t03_equals_false FOR TESTING.
ENDCLASS.

CLASS test_cygnus IMPLEMENTATION.
  METHOD t01_trim.
    cl_abap_unit_assert=>assert_equals( act = ycl_cygnus=>trim( '    XYZ      ' )
                                        exp = 'XYZ'
                                        msg = |Can't convert the inputed string| ).
  ENDMETHOD.

  METHOD t02_equals_true.
    cl_abap_unit_assert=>assert_true( act = ycl_cygnus=>equals( im_input1 = 1 im_input2 = 1 )
                                      msg = |The objects must be equivalent| ).
  ENDMETHOD.

  METHOD t03_equals_false.
    cl_abap_unit_assert=>assert_false( act = ycl_cygnus=>equals( im_input1 = 1 im_input2 = '1' )
                                       msg = |The objects must be different| ).
  ENDMETHOD.
endclass.
