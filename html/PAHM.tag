<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile doxygen_version="1.9.3">
  <compound kind="file">
    <name>dev_doc.md</name>
    <path>/home/takis/CSDL/parwinds/doc/user-guide/</path>
    <filename>d1/dfe/dev__doc_8md.html</filename>
  </compound>
  <compound kind="file">
    <name>mainpage.md</name>
    <path>/home/takis/CSDL/parwinds/doc/user-guide/</path>
    <filename>dc/dc6/mainpage_8md.html</filename>
  </compound>
  <compound kind="file">
    <name>model.md</name>
    <path>/home/takis/CSDL/parwinds/doc/user-guide/</path>
    <filename>dd/dc5/model_8md.html</filename>
  </compound>
  <compound kind="file">
    <name>csv_module.F90</name>
    <path>/home/takis/CSDL/parwinds/src/</path>
    <filename>db/d79/csv__module_8F90.html</filename>
    <class kind="type">csv_module::csv_string</class>
    <class kind="type">csv_module::csv_file</class>
    <namespace>csv_module</namespace>
    <member kind="function">
      <type>subroutine</type>
      <name>initialize_csv_file</name>
      <anchorfile>d3/d46/namespacecsv__module.html</anchorfile>
      <anchor>a9813e1ff838ed6024c464bb5c443bada</anchor>
      <arglist>(me, quote, delimiter, enclose_strings_in_quotes, enclose_all_in_quotes, logical_true_string, logical_false_string, chunk_size)</arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter, public</type>
      <name>csv_type_string</name>
      <anchorfile>d3/d46/namespacecsv__module.html</anchorfile>
      <anchor>a3cfc483ce0ca6c16b52a65593e6d9c6b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter, public</type>
      <name>csv_type_double</name>
      <anchorfile>d3/d46/namespacecsv__module.html</anchorfile>
      <anchor>a2f3670a20280d568164ae305a22523da</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter, public</type>
      <name>csv_type_integer</name>
      <anchorfile>d3/d46/namespacecsv__module.html</anchorfile>
      <anchor>ab1fe4c2137e9a04a1f12dd2a7ed53ed7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter, public</type>
      <name>csv_type_logical</name>
      <anchorfile>d3/d46/namespacecsv__module.html</anchorfile>
      <anchor>a6a9f8a700482f136af63775ba021c37d</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>csv_parameters.F90</name>
    <path>/home/takis/CSDL/parwinds/src/</path>
    <filename>db/dd7/csv__parameters_8F90.html</filename>
    <namespace>csv_parameters</namespace>
    <member kind="variable">
      <type>integer(ip), parameter, public</type>
      <name>max_real_str_len</name>
      <anchorfile>d1/da4/namespacecsv__parameters.html</anchorfile>
      <anchor>a882ce73f3edf518653ad6ff1d7b90e9f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len= *), parameter, public</type>
      <name>default_real_fmt</name>
      <anchorfile>d1/da4/namespacecsv__parameters.html</anchorfile>
      <anchor>a8090edb12e7a9922f8262b145e93bbf1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer(ip), parameter, public</type>
      <name>max_integer_str_len</name>
      <anchorfile>d1/da4/namespacecsv__parameters.html</anchorfile>
      <anchor>ad1283bae28c7633d990dca1e6c3fc5e0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len= *), parameter, public</type>
      <name>default_int_fmt</name>
      <anchorfile>d1/da4/namespacecsv__parameters.html</anchorfile>
      <anchor>ac61c877e599126bf3f72c9b90147678b</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>csv_utilities.F90</name>
    <path>/home/takis/CSDL/parwinds/src/</path>
    <filename>de/d72/csv__utilities_8F90.html</filename>
    <namespace>csv_utilities</namespace>
    <member kind="function">
      <type>pure subroutine, public</type>
      <name>expand_vector</name>
      <anchorfile>dc/d33/namespacecsv__utilities.html</anchorfile>
      <anchor>a6e82721fc2fc96ab10ca4a32547e1c88</anchor>
      <arglist>(vec, n, chunk_size, val, finished)</arglist>
    </member>
    <member kind="function">
      <type>integer function, dimension(:), allocatable, public</type>
      <name>unique</name>
      <anchorfile>dc/d33/namespacecsv__utilities.html</anchorfile>
      <anchor>a6c1f008f2a5f0ec6727aa9627a9e7bc4</anchor>
      <arglist>(vec, chunk_size)</arglist>
    </member>
    <member kind="function">
      <type>subroutine, public</type>
      <name>sort_ascending</name>
      <anchorfile>dc/d33/namespacecsv__utilities.html</anchorfile>
      <anchor>a07f2d0f6e53440f20e140a6c90f8ab2f</anchor>
      <arglist>(ivec)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>driver_mod.F90</name>
    <path>/home/takis/CSDL/parwinds/src/</path>
    <filename>d8/d93/driver__mod_8F90.html</filename>
    <namespace>pahm_drivermod</namespace>
    <member kind="function">
      <type>subroutine</type>
      <name>getprogramcmdlargs</name>
      <anchorfile>de/d07/namespacepahm__drivermod.html</anchorfile>
      <anchor>a3294ddc68b72ff9220010a8764a8afe3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>pahm_init</name>
      <anchorfile>de/d07/namespacepahm__drivermod.html</anchorfile>
      <anchor>ae0d4b223a96ba116b38152caf6b0768c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>pahm_run</name>
      <anchorfile>de/d07/namespacepahm__drivermod.html</anchorfile>
      <anchor>a7ae4571521a5bb4eb55990dd7fb76237</anchor>
      <arglist>(nTimeSTP)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>pahm_finalize</name>
      <anchorfile>de/d07/namespacepahm__drivermod.html</anchorfile>
      <anchor>af330510561d1d60a5c566fcab929c68f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>integer, save</type>
      <name>cnttimebegin</name>
      <anchorfile>de/d07/namespacepahm__drivermod.html</anchorfile>
      <anchor>ae7f7807bc5703a8e80f0f28f27e617d6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, save</type>
      <name>cnttimeend</name>
      <anchorfile>de/d07/namespacepahm__drivermod.html</anchorfile>
      <anchor>a2c3d50482829d555447e365d727ba69f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>global.F90</name>
    <path>/home/takis/CSDL/parwinds/src/</path>
    <filename>d2/d2d/global_8F90.html</filename>
    <namespace>pahm_global</namespace>
    <member kind="function">
      <type>real(sz) function</type>
      <name>airdensity</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>afa2b239f1665acd461276bf4722ff2de</anchor>
      <arglist>(atmT, atmP, relHum)</arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>lun_screen</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ae218e35fbc7f9bb54249bc9c4db1902b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>lun_ctrl</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>adf0264b78f0d9b097f19df8ad6f858b6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>lun_inp</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a40e1281ecfc5198d5717ee6402be7df3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>lun_inp1</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a55fa3a689cd10bc3106a7fc3ce343672</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>lun_log</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a8527565a8b242558b22df939eafd9eb9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>lun_btrk</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a9fce5f831c417bd794f09374711c8420</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>lun_btrk1</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a2fe7e1dba93c61412ca4d6835055649e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>lun_out</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a809d28e8052868f0ffedfcd659edc052</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>lun_out1</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a682eaf07f364f5622814a9c6973bfe5e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>defv_gravity</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a63eba70604751f6fc525f7e1dac4dd9d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>defv_atmpress</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a0fa4b8de4f8f10c321f941a22f4acb63</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>defv_rhoair</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a3e0c6be3ba0850f38b858d0f289148e3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>defv_rhowater</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ac4a920d4c55313f10f625f3b4dce7295</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>one2ten</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a5212a689f9191e3ff32f4705d21fe0b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>ten2one</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a0bd8cca45ccb2f8b6d209121c757e9a7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>pi</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a14800eeb2c75962b36128284fc001ec7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>deg2rad</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a8d0c21c8f96c879bd3ccf10d51f54db6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>rad2deg</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a053ccab45b0fa3791cf1e7ab5bcf0185</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>basee</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aba5897303d0e0cc952c09d297d2f8542</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>rearth</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a5f049ee92d92a48b96208d47f76b430a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>nm2m</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a3080e85f089d524d3240b0da414977d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>m2nm</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>abb9c28075ccaadef0e918a66ef29667d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>kt2ms</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a22bd5a01795721b5cee1c8186a555545</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>ms2kt</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a72e5065b49420d956346bab36f1f7bce</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>omega</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a0eefe060aff9c81120501d90c4dcdf9c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>mb2pa</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a5885f1972d366720748ad071da44e84c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>mb2kpa</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aa2fa0f05e46b1504fe285de9c0d1f3d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=fnamelen)</type>
      <name>logfilename</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>acb09a80f914b7d85e69469415079f44b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(fnamelen)</type>
      <name>controlfilename</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>abed037b55b8dc2723686f6c9a0f89649</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>meshfilenamespecified</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ad320f13b6a54b790942080a14e509906</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=fnamelen)</type>
      <name>meshfilename</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aa8f6d1c5b8d0dbafc69501dd9b65f4e9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=64)</type>
      <name>meshfiletype</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a3445e2765ecb7e93fbc3d52f56c51502</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=64)</type>
      <name>meshfileform</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a435e4478f516538033ae74e34f640e1b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>besttrackfilenamespecified</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a881d459172ccb696dad4c55a78d36d72</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>nbtrfiles</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ad45b1c789812efe9093a396a261fbdd3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=fnamelen), dimension(:), allocatable</type>
      <name>besttrackfilename</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a15f59c65b7e1ab134c4949faea236cd6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=512)</type>
      <name>title</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a662f13f592a8f8a297c37bc1461468d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>gravity</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a7ae3cd2f8e7aab45702a729bea526046</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>rhowater</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ad646fe8c70d6cb736292ec024cdf83cd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>rhoair</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ac2f4438de3c2005f7018ad4514145988</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>backgroundatmpress</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>adf51d50844bd7fafd7f0a7f3b424eeef</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>defv_bladjustfac</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aac64e91aa2b7224c8c016efd18b791ac</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>windreduction</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aefc86e728df4ef4f8e52859a4657917c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>bladjustfac</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>acd988786676e5d71161db23c57454b9c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=64)</type>
      <name>refdatetime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ab44cb70b4242c6a196e070a95f1b5732</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>refdate</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a4c035d82c2b47da1d7f348017b0f194a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>reftime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a91adddd1537a9c62e2eaabd60a88b357</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>refyear</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aadce7ffa4db233eddf8f2d743c380f49</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>refmonth</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a1dc2a33bb3baf57cfe610af9ac13bf0b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>refday</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a85a88731cd46edb05126224a2397b3de</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>refhour</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a73354efb967e7f1fb53e3d05378e3ede</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>refmin</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a115fc12f36e687cd667963741c94a650</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>refsec</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a3b49b26fc0b7f91adf1d74181d5056f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>refdatespecified</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a34711ac1e6046c08ca9cfd9a7ffec50c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=64)</type>
      <name>begdatetime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a7096a707407e38cb7f0c2540eaf37868</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>begdate</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ac21b3b9ba73caa44d25379fca1c549c9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>begtime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a7112068f94fd4b28798412e81a6f44fd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>begyear</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>abb89cde52552ac9863b18c736da8bdab</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>begmonth</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a84360ac98c5e82acc585918a1c8b227f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>begday</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aebde6bb06d9dc842febd340d87746ad0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>beghour</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a1a8ab57ad9413f3a935bf03c972bcb0b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>begmin</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a30c130878e2a1f1129f35c8a5abfe6f3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>begsec</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>afc3d74fe263441d3edb38effce4fd52a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>begdatespecified</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a4b9c7176babb3d8edd9f15159e2ebaaf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=64)</type>
      <name>enddatetime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>adfb765e4a01299867548c1ccd15d6805</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>enddate</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a46c111a64442e16e5ae52f20b56f1478</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>endtime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ac72d6d0fb869296880d05631156055ba</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>endyear</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ab393c605c47c1f3d1b409db0771ad862</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>endmonth</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>afe828af93c44f16387c511fad8c2887c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>endday</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a0e0a745de597311ef4fc4d852be07bd3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>endhour</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ac6bf6808b35a90460b34f46051e904fa</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>endmin</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a5d6b0dfbd1c3c72db107252ca203aa84</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>endsec</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ae9b3def360e70eaabed89354c2436c08</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>enddatespecified</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aaede917572ccc53c5903e4c99d60ffbd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>begsimtime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a4dfd49dc1da1aee31b7a3cf06217890a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>endsimtime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a4557a575c68ad0a0625139c5b4625483</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>begsimspecified</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ab4829c0ca523caa11a350822176b528a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>endsimspecified</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a467b6a6bef3c7c847e2e725574f6a260</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=1)</type>
      <name>unittime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a3a3e029522bc2af42287ce08ce2cf05c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>outdt</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a72ebdd28668a557d8876bea546e4d650</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>noutdt</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ad2639f6a3eaac0ffa7635365f2f537ac</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>mdoutdt</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ad887e7033e29e4bb8a04f0b3a71635b2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>mdbegsimtime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ad3464b7fcdacc5c0d55d3252aa4b23a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>mdendsimtime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a1ea2cf554f351131e7b0e81b08442ba5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>outfilenamespecified</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a8887c325398af6c05f6853077360839e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=fnamelen)</type>
      <name>outfilename</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a15777c2fa8b8bbb4ff3d2b478067900b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>ncshuffle</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aafc0d818d9b2956b60b6e3d8d22ab1a4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>ncdeflate</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a25b33d571fd559e4d41859bc11ed0b9c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>ncdlevel</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a58dbb9528d75532fc39a5e415c668723</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=20), parameter</type>
      <name>def_ncnam_pres</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>afba9349da39d013f27f918979523d731</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=20), parameter</type>
      <name>def_ncnam_wndx</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a21d75a825d63485dfba7292d117e15b6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=20), parameter</type>
      <name>def_ncnam_wndy</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ac89d7272962af1d6cccfae6800daf8e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=20)</type>
      <name>ncvarnam_pres</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a386a71c68894cea0bf13d08ccfe88e9f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=20)</type>
      <name>ncvarnam_wndx</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a33543d68f07310baadb1c0643a6b2ced</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=20)</type>
      <name>ncvarnam_wndy</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a2fcae265ff74db532c6c829c2b5b814e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>modeltype</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a6038d462464e57791182aa309973158e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>writeparams</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a4a3624485a83a897b5bf2d3415810794</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>wvelx</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a4c18062feb5db08e645081eb33692f2b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>wvely</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aa43b714ff88c2cb7f5a4055168d39586</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>wpress</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a136434a626f8e2519b58d232d9635ca4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>times</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>acba09df375969d56bf5faf3efad5b03f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(19), dimension(:), allocatable</type>
      <name>datestimes</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ae14fdc3a0d5b998076fb43c755b0d107</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>mesh.F90</name>
    <path>/home/takis/CSDL/parwinds/src/</path>
    <filename>d6/d90/mesh_8F90.html</filename>
    <namespace>pahm_mesh</namespace>
    <member kind="function">
      <type>subroutine</type>
      <name>readmesh</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a6fd7801e4cbacfd2a7ce61c0fb31073c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>readmeshasciifort14</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>af53257d02ceb6ebe4349de40187496d6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>allocatenodalandelementalarrays</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a3ac2350cf2b06f708810684f67950e69</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>character(len=80)</type>
      <name>agrid</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>ad019b2c772e7471bb98dcce81437597e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>np</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a9d65c0219f30b755bd8f652c8393d431</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>ne</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a77ca9644e6228f1618d5e06346003a10</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>ics</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>acac1aa484a425cce8f22802b93daec22</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>dp</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a47b691e347dec0b33bfffcff4583ea55</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>nfn</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a3c72e04c49bf1a0dfb63f5ebcd97fdda</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:, :), allocatable</type>
      <name>nm</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>af1c6c10da887fb6e3f5e5f876ba8bc86</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>slam</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a766ff36c46ed9d0d2170d2eb2d4c11f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>sfea</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a54538ee2eee5701129a8eec5c841b196</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>xcslam</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a1c477ea7bd9196e6e8fa74867692464d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>ycsfea</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>ab278b6d31c209ab19b8cb946b17051f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>slam0</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a21a1a685054cb9f57b6bbbea7e6b8708</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>sfea0</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a10555eec0c397ccc8b0446c1a4139e28</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>maxfacenodes</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a1bf78a0798b3acc58694f97b764706d3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>ismeshok</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a766a41364dd002b1912af851db0f63c1</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>messages.F90</name>
    <path>/home/takis/CSDL/parwinds/src/</path>
    <filename>dc/d15/messages_8F90.html</filename>
    <class kind="interface">pahm_messages::logmessage</class>
    <class kind="interface">pahm_messages::screenmessage</class>
    <class kind="interface">pahm_messages::allmessage</class>
    <namespace>pahm_messages</namespace>
    <member kind="function">
      <type>subroutine</type>
      <name>initlogging</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>ad2fb6cca6853de16ee45c8cdebe6190a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>openlogfile</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a4856e55c31868efd23b7f6ca723004e5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>closelogfile</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>ac4e3ac4677b30069fdf8e71c1c6445d4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>screenmessage_1</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a5572ed7e47d76c06eaf6a63775b4e508</anchor>
      <arglist>(message)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>screenmessage_2</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>ad2147826ba7ea43c9bbeeb651f522385</anchor>
      <arglist>(level, message)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>logmessage_1</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a35fcb921c54ef6e334a95c6b505567f0</anchor>
      <arglist>(message)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>logmessage_2</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a970017c11fbe751819090e327642f4ef</anchor>
      <arglist>(level, message)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>allmessage_1</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>aa47ab82c1278db0578d303d97d408924</anchor>
      <arglist>(message)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>allmessage_2</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a46370bbbd651ed45bb7a49926530310d</anchor>
      <arglist>(level, message)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setmessagesource</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>acf0c696cc1604842ee84a5df6d81179c</anchor>
      <arglist>(source)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>unsetmessagesource</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>ad35e9f2327aad65d4c669e3d886f54dc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>programversion</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a339ae583dc62f85245ae10374b0c677f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>programhelp</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a0bf7cabdd36155ddc9946687defee4ff</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>terminate</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a8fdeeba7e0469ebda6435518f619444b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>nscreen</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a1ecd538daf19e5201a5c9c5916f93011</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>debug</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a493629015a35acc176478fe53e512c9f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>echo</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a2a9d5e29dab51a5fa833a8987cde0b8a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>info</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a0e3974ecdb3768c76dd19110935aabeb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>warning</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a38a64580bcf33efcbee364dd8d235a42</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>error</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a1b76303291eaaaf618f186fc8033a301</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=10), dimension(5)</type>
      <name>loglevelnames</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>ae680b049a77c6cfd94dd547202cb5cd4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=50), dimension(100)</type>
      <name>messagesources</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a569fa2b4ee6160875d1e239ec3670636</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=1024)</type>
      <name>scratchmessage</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>acba9099b46a78f0d86165e9e3974e689</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=1024)</type>
      <name>scratchformat</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a33180607df48be3c8456951fcec19b04</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>sourcenumber</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a12ed4fad303d6a00566ba0de028fe1d6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>logfileopened</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>ac73e1bbc32cb8f8dfdac080f2b8bfafe</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>loginitcalled</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a3d934804e8d40ce7e05bd3cd8d8af339</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>netcdfio.F90</name>
    <path>/home/takis/CSDL/parwinds/src/</path>
    <filename>dd/dd8/netcdfio_8F90.html</filename>
    <class kind="type">pahm_netcdfio::filedata_t</class>
    <class kind="type">pahm_netcdfio::timedata_t</class>
    <namespace>pahm_netcdfio</namespace>
    <member kind="define">
      <type>#define</type>
      <name>NetCDFCheckErr</name>
      <anchorfile>dd/dd8/netcdfio_8F90.html</anchorfile>
      <anchor>a22ef4f0a34dd43f74262d10a2505c2b3</anchor>
      <arglist>(arg)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>initadcircnetcdfoutfile</name>
      <anchorfile>da/dd1/namespacepahm__netcdfio.html</anchorfile>
      <anchor>a21917504b7e9d5594375d1a48bb4cb8f</anchor>
      <arglist>(adcircOutFile)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>newadcircnetcdfoutfile</name>
      <anchorfile>da/dd1/namespacepahm__netcdfio.html</anchorfile>
      <anchor>a850b1df36d9d2d229b8b03f0558c3703</anchor>
      <arglist>(ncID, adcircOutFile)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>base_netcdfcheckerr</name>
      <anchorfile>da/dd1/namespacepahm__netcdfio.html</anchorfile>
      <anchor>aa686f5f58121595cbd368f0f0b12bfba</anchor>
      <arglist>(ierr, file, line)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>netcdfterminate</name>
      <anchorfile>da/dd1/namespacepahm__netcdfio.html</anchorfile>
      <anchor>aa0987122588b6ef883046848cfcefe0b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>writenetcdfrecord</name>
      <anchorfile>da/dd1/namespacepahm__netcdfio.html</anchorfile>
      <anchor>aaf8d794ff0adcfbca0e2d13c8b71162a</anchor>
      <arglist>(adcircOutFile, timeLoc)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setrecordcounterandstoretime</name>
      <anchorfile>da/dd1/namespacepahm__netcdfio.html</anchorfile>
      <anchor>a9247da765972aa9c8c5b0d116238416f</anchor>
      <arglist>(ncID, f, t)</arglist>
    </member>
    <member kind="variable">
      <type>type(timedata_t), save</type>
      <name>mytime</name>
      <anchorfile>da/dd1/namespacepahm__netcdfio.html</anchorfile>
      <anchor>ac1a6c82feb94d1593d9608ce9690aca6</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>pahm.F90</name>
    <path>/home/takis/CSDL/parwinds/src/</path>
    <filename>d9/d8a/pahm_8F90.html</filename>
    <member kind="function">
      <type>program</type>
      <name>pahm</name>
      <anchorfile>d9/d8a/pahm_8F90.html</anchorfile>
      <anchor>a3d3918f5c5f1ac0a7991a7a78f530f30</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>parwind.F90</name>
    <path>/home/takis/CSDL/parwinds/src/</path>
    <filename>d7/d96/parwind_8F90.html</filename>
    <class kind="type">parwind::besttrackdata_t</class>
    <class kind="type">parwind::hollanddata_t</class>
    <namespace>parwind</namespace>
    <member kind="function">
      <type>subroutine</type>
      <name>readbesttrackfile</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>abae6c098afd2135918a478b6b7b20673</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>readcsvbesttrackfile</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>a75c722a5d8fdb18014543923d7e4dcca</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>processhollanddata</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>a6efcf8be68b268f0a6d92ceb5f8c6f41</anchor>
      <arglist>(idTrFile, strOut, status)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>gethollandfields</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>ad2cf2a3c40591a24959e6dd126066294</anchor>
      <arglist>(timeIDX)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>writebesttrackdata</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>a7a4d6eb0de8c960ffd29e8705b11e707</anchor>
      <arglist>(inpFile, btrStruc, suffix)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>allocbtrstruct</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>a9b826e18db73886e01f39d55bf7e5b85</anchor>
      <arglist>(str, nRec)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>deallocbtrstruct</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>af91396f17ff340762da3b6da495fa690</anchor>
      <arglist>(str)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>allochollstruct</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>a7bbd86c1fc9b715f2dd8c8d340c6964c</anchor>
      <arglist>(str, nRec)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>deallochollstruct</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>a0ed4ae2d2927c042da5b0f3df42f5ef8</anchor>
      <arglist>(str)</arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>windreftime</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>a430089f221763f9d9cd0af0b4867af22</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>type(besttrackdata_t), dimension(:), allocatable</type>
      <name>besttrackdata</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>afc296d5f5c2c76c31bd1cc0002029901</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>type(hollanddata_t), dimension(:), allocatable</type>
      <name>holstru</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>a761000d7863654781602c4568eb95e58</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>sizes.F90</name>
    <path>/home/takis/CSDL/parwinds/src/</path>
    <filename>d3/d93/sizes_8F90.html</filename>
    <class kind="interface">pahm_sizes::comparereals</class>
    <class kind="interface">pahm_sizes::fixnearwholereal</class>
    <namespace>pahm_sizes</namespace>
    <member kind="function">
      <type>integer function</type>
      <name>comparedoublereals</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a147e8c42dc40888b4d1bbfb29ceb65fb</anchor>
      <arglist>(rVal1, rVal2, eps)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>comparesinglereals</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a4b43a656d83547f88e80147de3e78e53</anchor>
      <arglist>(rVal1, rVal2, eps)</arglist>
    </member>
    <member kind="function">
      <type>real(hp) function</type>
      <name>fixnearwholedoublereal</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a3239d3c5bf5f30554b9c68f39c2ce32b</anchor>
      <arglist>(rVal, eps)</arglist>
    </member>
    <member kind="function">
      <type>real(sp) function</type>
      <name>fixnearwholesinglereal</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a4472044c53b98880a96871c4d4dc8f1b</anchor>
      <arglist>(rVal, eps)</arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>sp</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a8b741ce0665b33aa5bf021791235a992</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>hp</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a470ddfd6241b6b3c6107f31d49abdc87</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>int16</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>aa716df892bd25f5aee41fc51c0f35a42</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>int8</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>aa5bd2910dc7f511fad87ec6734c248e9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>int4</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>ab354ec749a927952340defe51d309b1a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>int2</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>aabbd22854360d0891b42267b98e95bbc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>int1</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a264eca6a754d69c04046580618d5c087</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>long</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a0e425b2f4b1d89f08a3fdb511cb08d1e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>llong</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>aa6603d57b5027f74386248c2f367d231</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>wp</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a2fd2edf306caf05a042ea3fbb9c69712</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>ip</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>aae03da3bb6f471dbb719630225885b78</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>sz</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>ad960943e22c3587b8edefde221a11a64</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>nbyte</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a9f0b055b035e355c26062668c5514a2d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>rmissv</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>ace8d5a1f1488191db4e76d9084143953</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>imissv</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a7e0df97d9cd2ea4874c3fc4178af5efc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=1), parameter</type>
      <name>blank</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a5f4ce60aa12dcfee3641351c8fbaea60</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>fnamelen</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a22faaf1e970d85a42a0076d4267967c3</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>sortutils.F90</name>
    <path>/home/takis/CSDL/parwinds/src/</path>
    <filename>dc/d4a/sortutils_8F90.html</filename>
    <class kind="interface">sortutils::indexx</class>
    <class kind="interface">sortutils::arth</class>
    <class kind="interface">sortutils::arraycopy</class>
    <class kind="interface">sortutils::arrayequal</class>
    <class kind="interface">sortutils::swap</class>
    <namespace>sortutils</namespace>
    <member kind="function">
      <type>subroutine</type>
      <name>indexxint</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a18b0c386234bd3336c9e185fd3f2e281</anchor>
      <arglist>(arr1D, idx1D, status)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>icompxchg</name>
      <anchorfile>dc/d4a/sortutils_8F90.html</anchorfile>
      <anchor>a9a84b5261a9e763169be70c29396d0fb</anchor>
      <arglist>(i, j)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>indexxint8</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a71ecf74a3285fdc541c1568239a0f14f</anchor>
      <arglist>(arr1D, idx1D, status)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>indexxstring</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a818ba4d77bf55b1b9e171e1c00924d55</anchor>
      <arglist>(arr1D, idx1D, status, caseSens)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>indexxsingle</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a60b2d53d05f8973577d0e193b05b4993</anchor>
      <arglist>(arr1D, idx1D, status)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>indexxdouble</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a179b0ea014c19ae081095560719d8c01</anchor>
      <arglist>(arr1D, idx1D, status)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>quicksort</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a33d62feb5c8d9983664fb4e8e6f336c0</anchor>
      <arglist>(arr1D, status)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>sort2</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a9ede2e4d77a01ef0a1c54e8dc4cf3b35</anchor>
      <arglist>(arr1D, slv1D, status)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>arraycopyint</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a005074a54859efa078736a52a1689b7a</anchor>
      <arglist>(src, dest, nCP, nNCP)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>arraycopysingle</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a6ea7cef3f1f8ff088728e471fba61546</anchor>
      <arglist>(src, dest, nCP, nNCP)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>arraycopydouble</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a337be538e34c3db0cb4073863cbf0903</anchor>
      <arglist>(src, dest, nCP, nNCP)</arglist>
    </member>
    <member kind="function">
      <type>logical function</type>
      <name>arrayequalint</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>ab9c4ed8761bdc270d474067d05512cf4</anchor>
      <arglist>(arr1, arr2)</arglist>
    </member>
    <member kind="function">
      <type>logical function</type>
      <name>arrayequalsingle</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a86b2fa7dcb152720b332628a25a46ce3</anchor>
      <arglist>(arr1, arr2)</arglist>
    </member>
    <member kind="function">
      <type>logical function</type>
      <name>arrayequaldouble</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>ad582e1335e504809e10b6216be86c8f8</anchor>
      <arglist>(arr1, arr2)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>stringlexcomp</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a7822b9599be6b22fd49ba0ad285bc3f9</anchor>
      <arglist>(str1, str2, mSensitive)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>swapint</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a38ea05ad4de58f84a113df331a89a6c3</anchor>
      <arglist>(a, b, mask)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>swapsingle</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>abc3c3423cd07fb4fe2da9fbc9b1743e0</anchor>
      <arglist>(a, b, mask)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>swapdouble</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a7961c8e1a4388802af9461d77e17db0c</anchor>
      <arglist>(a, b, mask)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>swapintvec</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>af4f205d84ba214c6e40471e45cee69a3</anchor>
      <arglist>(a, b, mask)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>swapsinglevec</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>afb0c9c1a96c1b06b2f267155ca4a01cc</anchor>
      <arglist>(a, b, mask)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>swapdoublevec</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a4ca8f6baf733365b2949165cc4e178b2</anchor>
      <arglist>(a, b, mask)</arglist>
    </member>
    <member kind="function">
      <type>pure integer function, dimension(n)</type>
      <name>arthint</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>abda6bbfbbbff6d9c67a9342b55e8b617</anchor>
      <arglist>(first, increment, n)</arglist>
    </member>
    <member kind="function">
      <type>pure real(sp) function, dimension(n)</type>
      <name>arthsingle</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>afcf295b57e2ee9a1e372fa59c7b952b7</anchor>
      <arglist>(first, increment, n)</arglist>
    </member>
    <member kind="function">
      <type>pure real(hp) function, dimension(n)</type>
      <name>arthdouble</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>add223e7bb9369accb22d7206bda8c454</anchor>
      <arglist>(first, increment, n)</arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>timedateutils.F90</name>
    <path>/home/takis/CSDL/parwinds/src/</path>
    <filename>df/d29/timedateutils_8F90.html</filename>
    <class kind="interface">timedateutils::timeconv</class>
    <class kind="interface">timedateutils::gregtojulday</class>
    <class kind="interface">timedateutils::splitdatetimestring</class>
    <namespace>timedateutils</namespace>
    <member kind="function">
      <type>subroutine</type>
      <name>timeconvisec</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>aecff7363d62093ca61c250308c44d81f</anchor>
      <arglist>(iYear, iMonth, iDay, iHour, iMin, iSec, timeSec)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>timeconvrsec</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a06ba200273d53bc52c89a983537e00df</anchor>
      <arglist>(iYear, iMonth, iDay, iHour, iMin, rSec, timeSec)</arglist>
    </member>
    <member kind="function">
      <type>logical function</type>
      <name>leapyear</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>ac0661d72fdf8161ad7d0b30d0dc57bd6</anchor>
      <arglist>(iYear)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>yeardays</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>aca37b13adf7e4d6eba9469a5f47b0df5</anchor>
      <arglist>(iYear)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>monthdays</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a101cf9ce5907971b096d77575d8d249d</anchor>
      <arglist>(iYear, iMonth)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>dayofyear</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a82e2ed05beb5d53c80fb1c863b6934fc</anchor>
      <arglist>(iYear, iMonth, iDay)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>gregtojuldayisec</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>aef55e36ba18ec5b170232411ab9bca4b</anchor>
      <arglist>(iYear, iMonth, iDay, iHour, iMin, iSec, mJD)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>gregtojuldayrsec</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>ae97abca6832e55ab454ebcd9d81ea02e</anchor>
      <arglist>(iYear, iMonth, iDay, iHour, iMin, rSec, mJD)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>gregtojulday2</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a13cdb1276bdd39ad969c4e3cf8747a86</anchor>
      <arglist>(iDate, iTime, mJD)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>juldaytogreg</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>abc63ac16baec18b6c9bb2ee6e0400a63</anchor>
      <arglist>(julDay, iYear, iMonth, iDay, iHour, iMin, iSec, mJD)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>dayofyeartogreg</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a86f68bd48786e32c535b0564f3bdea5c</anchor>
      <arglist>(inYR, inDY, iYear, iMonth, iDay)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>splitdatetimestring</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>aea0cae13558be0360a240895e12f0265</anchor>
      <arglist>(inDateTime, iYear, iMonth, iDay, iHour, iMin, iSec)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>splitdatetimestring2</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>aefc8d34ba419aa2d839266b9ccb355b7</anchor>
      <arglist>(inDateTime, iDate, iTime)</arglist>
    </member>
    <member kind="function">
      <type>character(len=len(indatetime)) function</type>
      <name>preprocessdatetimestring</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a2561d57f398381d56d2fa94f5f9a1147</anchor>
      <arglist>(inDateTime)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>joindate</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a393203cc78370648d0dd392fe96d66ff</anchor>
      <arglist>(iYear, iMonth, iDay)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>splitdate</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a6954898ee8b7d8be2df0b30c0c167c87</anchor>
      <arglist>(inDate, iYear, iMonth, iDay)</arglist>
    </member>
    <member kind="function">
      <type>character(len=64) function</type>
      <name>datetime2string</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a565d549493d69e2c9ea5b7af18247df5</anchor>
      <arglist>(year, month, day, hour, min, sec, sep, units, zone, err)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>gettimeconvsec</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a6c7acacb9981bb9182378a449e45715b</anchor>
      <arglist>(units, invert)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>elapsedsecs</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a109255326a7eb93c3ccdb4b543c26385</anchor>
      <arglist>(inTime1, inTime2, inUnits)</arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>firstgregdate</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>ab8cb2b65a03be16286279b3dec918f1a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>firstgregtime</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a1a64948ed9bac5a8a8bafd90d27d6d7c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(hp), parameter</type>
      <name>offfirstgregday</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>ad8f352a9a5750f9116be6d916e1a6492</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>modjuldate</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a7177f8fe0187adb9e79b183c62483816</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>modjultime</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a2fd3ed89700ffd904d0089b43228391f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(hp), parameter</type>
      <name>offmodjulday</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>afb1962686bde76a2f0ec03ec908f2738</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>unixdate</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>aa229a5f1dc2d32dfb372e60a10ab7c2c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>unixtime</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>ac3aeb09ebc30455c93499b8fb930150e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(hp), parameter</type>
      <name>offunixjulday</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>ae7e3e4007a1bf2d20d44142fcf7d8c0b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>modeldate</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a5e15dbcc3fb16cbb0f6e71f276ebc700</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>modeltime</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a458bf2d4afd781d065ef0c4b6f634baf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(hp), parameter</type>
      <name>offmodeljulday</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a5df6616f73e04115ecbcda8cfd61405c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>usemodjulday</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>aeff0a8be54a5e1c0cd161fd1be211fad</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>mdjdate</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a36f796bbe43fcbc22afc2aa05a2f475e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>mdjtime</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>aba33610cf79f8d39a7ba78f3bc625547</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(hp), parameter</type>
      <name>mdjoffset</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>adafd87b0a51718a954f23206fc3177d2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>utilities.F90</name>
    <path>/home/takis/CSDL/parwinds/src/</path>
    <filename>d3/d2c/utilities_8F90.html</filename>
    <class kind="interface">utilities::geotocpp</class>
    <class kind="interface">utilities::cpptogeo</class>
    <class kind="interface">utilities::sphericaldistance</class>
    <namespace>utilities</namespace>
    <member kind="function">
      <type>subroutine</type>
      <name>openfileforread</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a2a41067ed5533ec0c36318e8f1e960bf</anchor>
      <arglist>(lun, fileName, errorIO)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>readcontrolfile</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>ab095172ef12ae151ab5c9aacf82f4dc6</anchor>
      <arglist>(inpFile)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>printmodelparams</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a57953a3306e17ea2e28254e3d2091516</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>getlinerecord</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a8723656afba63e33ed1c6cc8e5440b63</anchor>
      <arglist>(inpLine, outLine, lastCommFlag)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>parseline</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>ab30d13ba0fcebcb933a30be2237ec162</anchor>
      <arglist>(inpLine, outLine, keyWord, nVal, cVal, rVal)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>checkcontrolfileinputs</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a1e2f2593103f415e1c073284ff95a83f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>loadintvar</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a062355064a86a716b2ddff1aa0cd3fb4</anchor>
      <arglist>(nInp, vInp, nOut, vOut)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>loadlogvar</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a4e75fbe7546f8fb4163f1b8ae85bc776</anchor>
      <arglist>(nInp, vInp, nOut, vOut)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>loadrealvar</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a4a70a4be51dcd79bc46b6cfcb2d2ac0a</anchor>
      <arglist>(nInp, vInp, nOut, vOut)</arglist>
    </member>
    <member kind="function">
      <type>pure character(len(inpstring)) function</type>
      <name>tolowercase</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a376978b945cbdf5d33ff8bf905d19866</anchor>
      <arglist>(inpString)</arglist>
    </member>
    <member kind="function">
      <type>pure character(len(inpstring)) function</type>
      <name>touppercase</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a8dff395c74e87d059dadcf8bacdbfedd</anchor>
      <arglist>(inpString)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>convlon</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a7c756f058ce3e335cd942877a0217a08</anchor>
      <arglist>(inpLon)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>geotocpp_scalar</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>aea170adb23141b079617bc2824d32d47</anchor>
      <arglist>(lat, lon, lat0, lon0, x, y)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>geotocpp_1d</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>aed263ca845c3927079dc88493190e915</anchor>
      <arglist>(lat, lon, lat0, lon0, x, y)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>cpptogeo_scalar</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a0e78cb7bc0913f6070986b017d32fb08</anchor>
      <arglist>(x, y, lat0, lon0, lat, lon)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>cpptogeo_1d</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a975d96b5387531bcf6b6993cd476c51e</anchor>
      <arglist>(x, y, lat0, lon0, lat, lon)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>sphericaldistance_scalar</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>aacad1715b8a79f2e07520316fe552236</anchor>
      <arglist>(lat1, lon1, lat2, lon2)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function, dimension(:), allocatable</type>
      <name>sphericaldistance_1d</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a65f6dec547eb8e07b61b2222f2427d60</anchor>
      <arglist>(lats, lons, lat0, lon0)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function, dimension(:, :), allocatable</type>
      <name>sphericaldistance_2d</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a535cc3ff0804181360c9ba682cfeb74c</anchor>
      <arglist>(lats, lons, lat0, lon0)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>sphericaldistanceharv</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a2e123da7ff9aefba8edc1e32d89bc172</anchor>
      <arglist>(lat1, lon1, lat2, lon2)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>sphericalfracpoint</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a0ef8b9a5f7a0aac72618c3e7b05adf44</anchor>
      <arglist>(lat1, lon1, lat2, lon2, fraction, latf, lonf, distf, dist12)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>getlocandratio</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a35b859c005e3b9cc063bdc46a1675159</anchor>
      <arglist>(val, arrVal, idx1, idx2, wtRatio)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>charunique</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a241eabd46f9d0e4a26adc221570ad79f</anchor>
      <arglist>(inpVec, outVec, idxVec)</arglist>
    </member>
    <member kind="function">
      <type>real(sp) function</type>
      <name>valstr</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>af02043c76be30cc5e092ffaf0e28fb6d</anchor>
      <arglist>(String)</arglist>
    </member>
    <member kind="function">
      <type>real(hp) function</type>
      <name>dvalstr</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>aad75f7f3cadcd2677693859a6d525ba2</anchor>
      <arglist>(String)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>intvalstr</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a2a5c60da3dadf9f6ef913709c07dbee7</anchor>
      <arglist>(String)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>realscan</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a3101905bb797cb61841b9a73bbc419bb</anchor>
      <arglist>(String, Pos, Value)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>drealscan</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>ac6d4fd461bd13f1ca73e75038fd09fc9</anchor>
      <arglist>(String, Pos, Value)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>intscan</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a26a70a9de90e0016d323e4c8dbea1a5b</anchor>
      <arglist>(String, Pos, Signed, Value)</arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>closetol</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>aedd7ed542085c635303806fb1a4de353</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>vortex.F90</name>
    <path>/home/takis/CSDL/parwinds/src/</path>
    <filename>d8/de7/vortex_8F90.html</filename>
    <namespace>pahm_vortex</namespace>
    <member kind="function">
      <type>subroutine</type>
      <name>calcintensitychange</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a2c7cf08c2619746ea1c60556b6487b35</anchor>
      <arglist>(var, times, calcInt, status, order)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>uvtrans</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a68cd3f6ceb40446c3c0c6d192f8b61bb</anchor>
      <arglist>(lat, lon, times, u, v, status, order)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>uvtranspoint</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>ab5519766ad94937768730d763a1b60ea</anchor>
      <arglist>(lat1, lon1, lat2, lon2, time1, time2, u, v)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>newvortex</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a0d6e7c14014a6e29428891858e9a62ef</anchor>
      <arglist>(pinf, p0, lat, lon, vm)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>newvortexfull</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>aa3e39ffdec786880d02ec45c22b4e927</anchor>
      <arglist>(pinf, p0, lat, lon, vm)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setvortex</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>afb46a3a7951e556063be8ec3d95a02b4</anchor>
      <arglist>(pinf, p0, lat, lon)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setrmaxes</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>afec35a32a17a3ef20b24c8a693200dd0</anchor>
      <arglist>(rMaxW)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>getrmaxes</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>ab7cd240c554d0b57cbd5980646414ba4</anchor>
      <arglist>(rMaxW)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>calcrmaxes</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a580543eed13ec39a2d21135376a5f72a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>calcrmaxesfull</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a5f7ee771ea7ff74d85f4f431886bbffb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>fitrmaxes</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a057b1daa57ff7309fe0c66eae712d258</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>fitrmaxes4</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>adaad3a34592cbf6503b8817c4be1b6fd</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setvmaxesbl</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>adb1d4d61cb0809eb699973ec567239d3</anchor>
      <arglist>(vMaxW)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>getvmaxesbl</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>aba997224fa8147c6bdd36326ed510fbf</anchor>
      <arglist>(vMaxW)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setusevmaxesbl</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a7e71325e734bf727749e63f1d2992b3a</anchor>
      <arglist>(u)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setshapeparameter</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a032db54f236d415cab607757db794ba3</anchor>
      <arglist>(param)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>getshapeparameter</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>acdebbf3bff175f8a57b0bbfaf1540b5b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function, dimension(4)</type>
      <name>getshapeparameters</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a6a318caea255e63a0974363afb650978</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function, dimension(4)</type>
      <name>getphifactors</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>abb7c7e54b03cd6f403c01f93d049a9d1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setisotachradii</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a7ad967d7396daacf3ef95f295de84820</anchor>
      <arglist>(ir)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setisotachwindspeeds</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a68419bdad6df6ac19750abe443efaaf2</anchor>
      <arglist>(vrQ)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setusequadrantvr</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a57aabcc3f59fcf7075aa0f34d35cf312</anchor>
      <arglist>(u)</arglist>
    </member>
    <member kind="function">
      <type>logical function</type>
      <name>getusequadrantvr</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a632207c65211e9337eb3f016f274558d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>spinterp</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a096ca385730b45c246bbbf997a6e8b48</anchor>
      <arglist>(angle, dist, opt)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>interpr</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a27ef69f6ab3e859d5f3f55d0d34b6a02</anchor>
      <arglist>(quadVal, quadSel, quadDis)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>rmw</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>ae5616e321c85eb04b486fa78ea556773</anchor>
      <arglist>(angle)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>uvp</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a90ff68ab89a00a014a2429d42758a3f5</anchor>
      <arglist>(lat, lon, uTrans, vTrans, u, v, p)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>uvpr</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>add2e19299be51bde3c016c4702653eb0</anchor>
      <arglist>(iDist, iAngle, iRmx, iRmxTrue, iB, iVm, iPhi, uTrans, vTrans, geof, u, v, p)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>fang</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>ac953414ecaf1b96028c4258cb011658d</anchor>
      <arglist>(r, rmx)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>rotate</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a7fc78bcdd0071e81581505ac558c0e27</anchor>
      <arglist>(x, y, angle, whichWay, xr, yr)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>getlatestrmax</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>ac03267d57521ba6131e172157e13012d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>getlatestangle</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a936cc297a827f7c645bc265e4f53f66c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>vhwithcorifull</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a01b29cf3c18d04fb55a502f42f51af39</anchor>
      <arglist>(testRMax)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>vhwithcori</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a1e9c82cf5fb1c37ebd0629060e93d5fa</anchor>
      <arglist>(testRMax)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>vhnocori</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a758504d51e519dac32d8146e79fccd2c</anchor>
      <arglist>(testRMax)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>findroot</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a24ea19697c70ab6e010e36a71faefcbc</anchor>
      <arglist>(func, x1, x2, dx, a, b)</arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>nquads</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a3a66445e11345c89df6e5c058bb3c572</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>npoints</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a1fb78b1fa65419a5994ce0f22f42f820</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(npoints)</type>
      <name>rmaxes</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a78858c9851bd9cc4d8dc2556c1b0bb64</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(npoints, 4)</type>
      <name>rmaxes4</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a1cdb70d18270f8efba2a01244e127dec</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>pn</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>acd4aa88d9914f73fa4a6fe17a8f0369b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>pc</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a5c493b46044a72edec476d28b4d77b67</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>clat</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a8f0188b57efe26bbf135b55f9a6cf774</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>clon</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a13e18480e90cb183b50f0a2f2ef6e11d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>vmax</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>aeb1c563da0b8160021057352a6e46f69</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>b</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a82ea497dd1fddaf56fc7a0879803fa82</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>corio</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a754c7d9207087929fab19329a6a455f3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>vr</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a069a249ffa588b632ef79c4a373ced5f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>phi</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a82154b63680b9a3b7809f9df4f2c458f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(npoints)</type>
      <name>phis</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a2af0aa77c4a01e9dcd75ae9e0a6f83df</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(npoints, 4)</type>
      <name>phis4</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a43f2820ae052c662ea2eb722e31360b5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(npoints)</type>
      <name>bs</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>ae433c24eb7f394bb8c230b95b3d5b63e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(npoints, 4)</type>
      <name>bs4</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a6f3d99fff0410bf92c1515f23be415f7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(npoints)</type>
      <name>vmbl</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>ae1896e99c9402793d992c9eb4fe9903b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(npoints, 4)</type>
      <name>vmbl4</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a1f3013290dc423326dbd152a11a24633</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(npoints, 4)</type>
      <name>quadflag4</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a8d8b291552868b360a84dcacab9ef844</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(npoints, 4)</type>
      <name>quadir4</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a8ce3bd0c34544557c2820cf6e0f00e53</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(nquads)</type>
      <name>vrquadrant</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>aaedb6a3f66f5a7b1573cda37eda074a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(nquads)</type>
      <name>radius</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a7fe6aa4c2d7fbda455bdefdaab3da84a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>quad</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a14d151900057b9e045cbb74c18885539</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>latestrmax</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>af6a57249e4c8238e1dbd7ac15f4fe199</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>latestangle</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a30395c1dc5034e8de57408f6636f4116</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>usequadrantvr</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>ae517f1ff4a1489b35c5de6b8abc17973</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>usevmaxesbl</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a5a15433aedb32d3d4fff30b3dad01347</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="interface">
    <name>pahm_messages::allmessage</name>
    <filename>d1/de1/interfacepahm__messages_1_1allmessage.html</filename>
    <member kind="function">
      <type>subroutine</type>
      <name>allmessage_1</name>
      <anchorfile>d1/de1/interfacepahm__messages_1_1allmessage.html</anchorfile>
      <anchor>a651c3a922a90098c8b0783666d7424b6</anchor>
      <arglist>(message)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>allmessage_2</name>
      <anchorfile>d1/de1/interfacepahm__messages_1_1allmessage.html</anchorfile>
      <anchor>a756b773a56f01161905eac357356636f</anchor>
      <arglist>(level, message)</arglist>
    </member>
  </compound>
  <compound kind="interface">
    <name>sortutils::arraycopy</name>
    <filename>d5/d5d/interfacesortutils_1_1arraycopy.html</filename>
    <member kind="function">
      <type>subroutine</type>
      <name>arraycopyint</name>
      <anchorfile>d5/d5d/interfacesortutils_1_1arraycopy.html</anchorfile>
      <anchor>a4f7ac032368a1f37474212362b5b5991</anchor>
      <arglist>(src, dest, nCP, nNCP)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>arraycopysingle</name>
      <anchorfile>d5/d5d/interfacesortutils_1_1arraycopy.html</anchorfile>
      <anchor>aff1caad8dae54f6991c5b37d6e93b253</anchor>
      <arglist>(src, dest, nCP, nNCP)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>arraycopydouble</name>
      <anchorfile>d5/d5d/interfacesortutils_1_1arraycopy.html</anchorfile>
      <anchor>ae26970abea8ff49a61e05eead4e11a7d</anchor>
      <arglist>(src, dest, nCP, nNCP)</arglist>
    </member>
  </compound>
  <compound kind="interface">
    <name>sortutils::arrayequal</name>
    <filename>d4/d00/interfacesortutils_1_1arrayequal.html</filename>
    <member kind="function">
      <type>logical function</type>
      <name>arrayequalint</name>
      <anchorfile>d4/d00/interfacesortutils_1_1arrayequal.html</anchorfile>
      <anchor>aae029ccfcae3fe63a40e5f3cf065332a</anchor>
      <arglist>(arr1, arr2)</arglist>
    </member>
    <member kind="function">
      <type>logical function</type>
      <name>arrayequalsingle</name>
      <anchorfile>d4/d00/interfacesortutils_1_1arrayequal.html</anchorfile>
      <anchor>a4ec66149cd4de68c6a0cbafaecab793a</anchor>
      <arglist>(arr1, arr2)</arglist>
    </member>
    <member kind="function">
      <type>logical function</type>
      <name>arrayequaldouble</name>
      <anchorfile>d4/d00/interfacesortutils_1_1arrayequal.html</anchorfile>
      <anchor>ab57801d5cdc60bd4a7cf41811472235c</anchor>
      <arglist>(arr1, arr2)</arglist>
    </member>
  </compound>
  <compound kind="interface">
    <name>sortutils::arth</name>
    <filename>dc/d60/interfacesortutils_1_1arth.html</filename>
    <member kind="function">
      <type>pure integer function, dimension(n)</type>
      <name>arthint</name>
      <anchorfile>dc/d60/interfacesortutils_1_1arth.html</anchorfile>
      <anchor>a782673a55940576e148f0fe543032c86</anchor>
      <arglist>(first, increment, n)</arglist>
    </member>
    <member kind="function">
      <type>pure real(sp) function, dimension(n)</type>
      <name>arthsingle</name>
      <anchorfile>dc/d60/interfacesortutils_1_1arth.html</anchorfile>
      <anchor>adf6db2a110a3d0471719dd89fb5aaf4e</anchor>
      <arglist>(first, increment, n)</arglist>
    </member>
    <member kind="function">
      <type>pure real(hp) function, dimension(n)</type>
      <name>arthdouble</name>
      <anchorfile>dc/d60/interfacesortutils_1_1arth.html</anchorfile>
      <anchor>a4c6393649ead1c4c9c0ffb5dcea5d4e2</anchor>
      <arglist>(first, increment, n)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>parwind::besttrackdata_t</name>
    <filename>d2/d89/structparwind_1_1besttrackdata__t.html</filename>
    <member kind="variable">
      <type>character(len=fnamelen)</type>
      <name>filename</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>ae9757f9f231e76084e28e9c46ee84b50</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=10)</type>
      <name>thisstorm</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>acf389b4896c4ff2f4ac5f69bd11d6356</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>loaded</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a74fe353d77c95929e722cbdca5e53618</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>numrec</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a716048682a9089241533dccba1992d13</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=2), dimension(:), allocatable</type>
      <name>basin</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>ab78b0e152552e924836b3900bef4fcee</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>cynum</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>ad34e43d249b6074b11833b8792053e5c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=10), dimension(:), allocatable</type>
      <name>dtg</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>ad5a2a29e8f1e47d1e8e971b4983523d7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>technum</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a5e20fca177177cd7e8a992ad2080b328</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=4), dimension(:), allocatable</type>
      <name>tech</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>af5bc6201f79767803fd8967c2d8738a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>tau</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a7f3bff26c2bdb99c1d66af8ebc90a3dd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>intlat</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>ac04cb3158ab342371b09873a9e7bd621</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>intlon</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>aa9a3524a1279f5df42616f63fd7aa66d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=1), dimension(:), allocatable</type>
      <name>ew</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a023ca10ac07779a5bc95d750fd915377</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=1), dimension(:), allocatable</type>
      <name>ns</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a9a81b0ac27932853b2b891fe4fb882cf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>intvmax</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a838d4f5885defed3c792208d776e6d38</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>intmslp</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>acc27e8980eca24a7fc50c7b2cb0922ca</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=2), dimension(:), allocatable</type>
      <name>ty</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a0f4afc7dbe494c7223481e82e342b463</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>rad</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a02a4ae8a62f1894cb2868f11364add47</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=3), dimension(:), allocatable</type>
      <name>windcode</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>ad65ea184745133af4af16685c15697bc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>intrad1</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a69a7f0e346c98723315a415c19e1a336</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>intrad2</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a0a460d057629aaa2cf18c083c1b391c9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>intrad3</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a9fc775ca98f4fc73a55e06e1748dac21</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>intrad4</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>ace4ef58b571ac0039d68eb4865c7436e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>intpouter</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a4b17eef1082a79e88c287ece002e6851</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>introuter</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a2856ecfa2f7b05e423a371fe960bdb59</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>intrmw</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a49d901992774e3e2a83d37a60b92e8bd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>gusts</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a98b94e9486f6afbe9d3f527d887a439a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>eye</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a8ef94a3d10a4e92c39eee7b1f0dbdcc4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=3), dimension(:), allocatable</type>
      <name>subregion</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>afda62e5ef0ba8f47c675ed15793488de</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>maxseas</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>ad4d6d9e851af8fcaf1c0a3c7c952bb80</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=3), dimension(:), allocatable</type>
      <name>initials</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a5f5a0c93ba2d30ee6992980418527e43</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>dir</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>ac7e144b2ac919b06519f8ffde57a4316</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>intspeed</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a38797c8f9c0d3e494a0f732e2d7bae59</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=10), dimension(:), allocatable</type>
      <name>stormname</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a0b90e08b0faf991f474eeaf2d308ee41</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>cyclenum</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a16c9344a720144dbae9d78d3eed48e0e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>year</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>ab3ca6cdf9cf399737e82310bb3c5c131</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>month</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a7f1de268463df56c0bb128b615b320e6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>day</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a9a1c32ad2f7cc06ac408cd0d8a5d6b0a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>hour</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>ae492e403ef5bbf39799ea0f81ebd3268</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>lat</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a97b450286d8ccdb9e2f25538726fdfb2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>lon</name>
      <anchorfile>d2/d89/structparwind_1_1besttrackdata__t.html</anchorfile>
      <anchor>a654fe1067b45a0ba738a644a5bf22f4c</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="interface">
    <name>pahm_sizes::comparereals</name>
    <filename>d3/d73/interfacepahm__sizes_1_1comparereals.html</filename>
    <member kind="function">
      <type>integer function</type>
      <name>comparesinglereals</name>
      <anchorfile>d3/d73/interfacepahm__sizes_1_1comparereals.html</anchorfile>
      <anchor>a35625338240f06985201f75eb99e7692</anchor>
      <arglist>(rVal1, rVal2, eps)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>comparedoublereals</name>
      <anchorfile>d3/d73/interfacepahm__sizes_1_1comparereals.html</anchorfile>
      <anchor>af7f899d790ea479fdce2829370bedf75</anchor>
      <arglist>(rVal1, rVal2, eps)</arglist>
    </member>
  </compound>
  <compound kind="interface">
    <name>utilities::cpptogeo</name>
    <filename>da/d79/interfaceutilities_1_1cpptogeo.html</filename>
    <member kind="function">
      <type>subroutine</type>
      <name>cpptogeo_scalar</name>
      <anchorfile>da/d79/interfaceutilities_1_1cpptogeo.html</anchorfile>
      <anchor>afd9e0099634f884fccaffe9fd5b205ce</anchor>
      <arglist>(x, y, lat0, lon0, lat, lon)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>cpptogeo_1d</name>
      <anchorfile>da/d79/interfaceutilities_1_1cpptogeo.html</anchorfile>
      <anchor>a447b0b7e7902f30193fcb0407c794236</anchor>
      <arglist>(x, y, lat0, lon0, lat, lon)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>csv_module::csv_file</name>
    <filename>d9/db8/structcsv__module_1_1csv__file.html</filename>
    <member kind="function">
      <type>procedure, public</type>
      <name>initialize</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a58ef093915f4afe959df606570cf4d4c</anchor>
      <arglist>=&gt; initialize_csv_file</arglist>
    </member>
    <member kind="function">
      <type>procedure, public</type>
      <name>read</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a12efbb7d8518df8977157a26b21a5a5e</anchor>
      <arglist>=&gt; read_csv_file</arglist>
    </member>
    <member kind="function">
      <type>procedure, public</type>
      <name>destroy</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a50045aeccbaa227da2221a4556e9a8f8</anchor>
      <arglist>=&gt; destroy_csv_file</arglist>
    </member>
    <member kind="function">
      <type>procedure, public</type>
      <name>variable_types</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a2343adb545c00aab09906017bce9bfe4</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>generic, public</type>
      <name>get_header</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a0be9b204582c9f2006306bdad0642939</anchor>
      <arglist>=&gt; get_header_str, get_header_csv_str</arglist>
    </member>
    <member kind="function">
      <type>procedure</type>
      <name>get_header_str</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>af0cc0474c49d5f15c9b2b8d3f53473c1</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>procedure</type>
      <name>get_header_csv_str</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a19018409fe50f5aeefb10a981db1567d</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>generic, public</type>
      <name>get</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>ab5a9ad6066ebf388d15c234e5f0b928a</anchor>
      <arglist>=&gt; get_csv_data_as_str, csv_get_value, get_real_column, get_integer_column, get_logical_column, get_character_column, get_csv_string_column</arglist>
    </member>
    <member kind="function">
      <type>procedure</type>
      <name>get_csv_data_as_str</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a5773044990028f7ee9579f4dc9addcf2</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>procedure</type>
      <name>csv_get_value</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a53659673267932427992824135f1b000</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>procedure</type>
      <name>get_real_column</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a02d14c08ed904535899c29bcd47d6944</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>procedure</type>
      <name>get_integer_column</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>ae8472437e69cd86a242073d8d5b5d926</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>procedure</type>
      <name>get_logical_column</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a7e0cfecdaf388f15dd367ac6fc6baf43</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>procedure</type>
      <name>get_character_column</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>ad6d5fae1b3dbfd37213a76f8bf04db58</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>procedure</type>
      <name>get_csv_string_column</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>aafd8c90f723a55d38646e2ed8534f829</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>procedure, public</type>
      <name>open</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a2d8023dea77cbe476cc46f8043209312</anchor>
      <arglist>=&gt; open_csv_file</arglist>
    </member>
    <member kind="function">
      <type>generic, public</type>
      <name>add</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a6a245cd138cdb14c461fb45c88988d10</anchor>
      <arglist>=&gt; add_cell, add_vector, add_matrix</arglist>
    </member>
    <member kind="function">
      <type>procedure</type>
      <name>add_cell</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a90472f7312dc43d68007b81309b1adc7</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>procedure</type>
      <name>add_vector</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a73849bde29a46bd390db463920f1db6d</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>procedure</type>
      <name>add_matrix</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>ad8495ff62ccac38933ca346e794efa4b</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>procedure, public</type>
      <name>next_row</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>ad9eded48f7713cb20c30d4a30031a50a</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>procedure, public</type>
      <name>close</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a1be822035e3f0ee62016200eb8201793</anchor>
      <arglist>=&gt; close_csv_file</arglist>
    </member>
    <member kind="function">
      <type>procedure</type>
      <name>tokenize</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>adee0082e2086cd1f74b10d1719fd101d</anchor>
      <arglist>=&gt; tokenize_csv_line</arglist>
    </member>
    <member kind="function">
      <type>procedure</type>
      <name>read_line_from_file</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a36e84d5eb4d38fa736861ed984d161b7</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type>procedure</type>
      <name>get_column</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>ad12791e1569561e88f4cf811e6e53795</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=1)</type>
      <name>quote</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a173b21cd7d1aaae2e80be90095fcc08f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=1)</type>
      <name>delimiter</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>ae34058ed5146aea7193ae986ece2008c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, public</type>
      <name>n_rows</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a3ea6a4e6c7ef3deef456b9ec11d1c3bf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, public</type>
      <name>n_cols</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a1dd93ae8646296b6721433a9801cebc4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>chunk_size</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a3473c0231b818f3ff623dc8c662b6d61</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>type(csv_string), dimension(:), allocatable</type>
      <name>header</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>ae946c22af1e191bd4a6f3fa56aea7287</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>type(csv_string), dimension(:,:), allocatable</type>
      <name>csv_data</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a79aaa5b1b46775281f2fbb0a6f2c7709</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>icol</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>adf75b9b521cfd9be80926ebea5fb6d1b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>iunit</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>aaff6b4d3c3b9b4c5a52490dd7c4c6456</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>enclose_strings_in_quotes</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>afa71dfecb7f2dca02df0e5f2a0c5449d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>enclose_all_in_quotes</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a92de24edee25ba3ab55e1bb212170339</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=1)</type>
      <name>logical_true_string</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>ae1b369f1950ebaa18d95368bdf96f603</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=1)</type>
      <name>logical_false_string</name>
      <anchorfile>d9/db8/structcsv__module_1_1csv__file.html</anchorfile>
      <anchor>a12f920fbab401e84d097376a59bf5825</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>csv_module::csv_string</name>
    <filename>dd/d55/structcsv__module_1_1csv__string.html</filename>
    <member kind="variable">
      <type>character(len=:), allocatable</type>
      <name>str</name>
      <anchorfile>dd/d55/structcsv__module_1_1csv__string.html</anchorfile>
      <anchor>ac2ed6f16f80979b583faa3f56f705932</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>pahm_netcdfio::filedata_t</name>
    <filename>d4/d0e/structpahm__netcdfio_1_1filedata__t.html</filename>
    <member kind="variable">
      <type>logical</type>
      <name>initialized</name>
      <anchorfile>d4/d0e/structpahm__netcdfio_1_1filedata__t.html</anchorfile>
      <anchor>ad080be5ee39ea45aa9c9ff36f107b125</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>filereccounter</name>
      <anchorfile>d4/d0e/structpahm__netcdfio_1_1filedata__t.html</anchorfile>
      <anchor>ae5bb738fd70475db814a48556c6305d6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=fnamelen)</type>
      <name>filename</name>
      <anchorfile>d4/d0e/structpahm__netcdfio_1_1filedata__t.html</anchorfile>
      <anchor>a3b87c7e006cdb60dcedadb209415baab</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>filefound</name>
      <anchorfile>d4/d0e/structpahm__netcdfio_1_1filedata__t.html</anchorfile>
      <anchor>a34c2d146d35369e7ffb19c7f9d34b261</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="interface">
    <name>pahm_sizes::fixnearwholereal</name>
    <filename>d4/dc3/interfacepahm__sizes_1_1fixnearwholereal.html</filename>
    <member kind="function">
      <type>real(sp) function</type>
      <name>fixnearwholesinglereal</name>
      <anchorfile>d4/dc3/interfacepahm__sizes_1_1fixnearwholereal.html</anchorfile>
      <anchor>a062ca26e5f85a010e40b5b040e778bd0</anchor>
      <arglist>(rVal, eps)</arglist>
    </member>
    <member kind="function">
      <type>real(hp) function</type>
      <name>fixnearwholedoublereal</name>
      <anchorfile>d4/dc3/interfacepahm__sizes_1_1fixnearwholereal.html</anchorfile>
      <anchor>a3e84d940a082d8b986bc65481a249987</anchor>
      <arglist>(rVal, eps)</arglist>
    </member>
  </compound>
  <compound kind="interface">
    <name>utilities::geotocpp</name>
    <filename>d0/d59/interfaceutilities_1_1geotocpp.html</filename>
    <member kind="function">
      <type>subroutine</type>
      <name>geotocpp_scalar</name>
      <anchorfile>d0/d59/interfaceutilities_1_1geotocpp.html</anchorfile>
      <anchor>a55b5ad76b43f7aa3dbbcb493190a95b0</anchor>
      <arglist>(lat, lon, lat0, lon0, x, y)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>geotocpp_1d</name>
      <anchorfile>d0/d59/interfaceutilities_1_1geotocpp.html</anchorfile>
      <anchor>a482bafa3e86ebd56e500ac3752e0558b</anchor>
      <arglist>(lat, lon, lat0, lon0, x, y)</arglist>
    </member>
  </compound>
  <compound kind="interface">
    <name>timedateutils::gregtojulday</name>
    <filename>d7/d0b/interfacetimedateutils_1_1gregtojulday.html</filename>
    <member kind="function">
      <type>real(sz) function</type>
      <name>gregtojuldayisec</name>
      <anchorfile>d7/d0b/interfacetimedateutils_1_1gregtojulday.html</anchorfile>
      <anchor>afc8af3bdb0b4ce15757d5d57c4dccd35</anchor>
      <arglist>(iYear, iMonth, iDay, iHour, iMin, iSec, mJD)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>gregtojuldayrsec</name>
      <anchorfile>d7/d0b/interfacetimedateutils_1_1gregtojulday.html</anchorfile>
      <anchor>a69d60502d5a566a83c486c68ef728178</anchor>
      <arglist>(iYear, iMonth, iDay, iHour, iMin, rSec, mJD)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>gregtojulday2</name>
      <anchorfile>d7/d0b/interfacetimedateutils_1_1gregtojulday.html</anchorfile>
      <anchor>a6a65e9e2d0f95a66554e1290a9f13a6f</anchor>
      <arglist>(iDate, iTime, mJD)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>parwind::hollanddata_t</name>
    <filename>d0/da3/structparwind_1_1hollanddata__t.html</filename>
    <member kind="variable">
      <type>character(len=fnamelen)</type>
      <name>filename</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>ad79f5fd9c1684c282f3fce03db1d7e6e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=10)</type>
      <name>thisstorm</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>a6c25b2ef6c5132c5a7f3d888b33bfce1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>loaded</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>a78f6a140e85ede0d02f09b1ba6546f30</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>numrec</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>aa23d7e0651aa850213416192342c8d43</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=2), dimension(:), allocatable</type>
      <name>basin</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>a5e0c95434bab57cefdb0d23b84b6f720</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>stormnumber</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>a39e4a4df507e4b202de82a83c9324286</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=10), dimension(:), allocatable</type>
      <name>dtg</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>a2782a07ece32906bcbfbcb8e6d8c433a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>year</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>a30f70146fc2f084024e97e286a426356</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>month</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>accc432d96de6a3f888381aaa1da8eae8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>day</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>a279be687588ae11a64cac6de4c575679</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>hour</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>a3115a9b63e3cfb756faa86b4347c2b1f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>casttime</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>aea06cc5afb0dd41368dd57cf45c38393</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=4), dimension(:), allocatable</type>
      <name>casttype</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>ac47daf30ad7b2af228597d3ea919d8be</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>fcstinc</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>aee54f4129aee3a812618829f6f67b347</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>ilat</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>af0521064526d9f4b44be528362689c5a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>ilon</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>abed9238b5ba13baf3bdc83c9c2f46c87</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>lat</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>adc648b7dd6b404d572714ec97966bc05</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>lon</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>a2ff6651a91871ecd4206cb5b8b2d3879</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>ispeed</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>a5b07589c0183a3f485af22854f8ebb96</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>speed</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>a73d98a0453157706b5530b27f32d970e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>icpress</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>acba8d688c900ea634b47b2283974286b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>cpress</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>ad9062fa851a1f492e36f043b6f7c801b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>irrp</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>a0289857cb4eca7ea2eefe9f8e85ed10f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>rrp</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>a0b9278fcd7958702380e6a6843407ac5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>irmw</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>adbed8900f58fde17a3e3f96b78cb5643</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>rmw</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>ab3f201f1028975d2672bae29b0d5a671</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>cprdt</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>abe849f84138a0063b71a97e62896826e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>trvx</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>a8c2d47fb20c6b9b4a99e5d7d14053cf3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>trvy</name>
      <anchorfile>d0/da3/structparwind_1_1hollanddata__t.html</anchorfile>
      <anchor>a1eb7632e954f8c38b9a8a390c6fe0281</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="interface">
    <name>sortutils::indexx</name>
    <filename>d1/d72/interfacesortutils_1_1indexx.html</filename>
    <member kind="function">
      <type>subroutine</type>
      <name>indexxint</name>
      <anchorfile>d1/d72/interfacesortutils_1_1indexx.html</anchorfile>
      <anchor>a4e4fa36a9147b5a7eb8a9fd718fafc50</anchor>
      <arglist>(arr1D, idx1D, status)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>indexxint8</name>
      <anchorfile>d1/d72/interfacesortutils_1_1indexx.html</anchorfile>
      <anchor>abca639f6c4c72a7a97e26522db8c1249</anchor>
      <arglist>(arr1D, idx1D, status)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>indexxstring</name>
      <anchorfile>d1/d72/interfacesortutils_1_1indexx.html</anchorfile>
      <anchor>ae59fb4eaf41ea6af9149f9dc28df4421</anchor>
      <arglist>(arr1D, idx1D, status, caseSens)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>indexxsingle</name>
      <anchorfile>d1/d72/interfacesortutils_1_1indexx.html</anchorfile>
      <anchor>af7ae6ba72f204c10de0faa8023f9fc4a</anchor>
      <arglist>(arr1D, idx1D, status)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>indexxdouble</name>
      <anchorfile>d1/d72/interfacesortutils_1_1indexx.html</anchorfile>
      <anchor>a14dc4f3d78c6d7a518f48185dac60b8c</anchor>
      <arglist>(arr1D, idx1D, status)</arglist>
    </member>
  </compound>
  <compound kind="interface">
    <name>pahm_messages::logmessage</name>
    <filename>de/d70/interfacepahm__messages_1_1logmessage.html</filename>
    <member kind="function">
      <type>subroutine</type>
      <name>logmessage_1</name>
      <anchorfile>de/d70/interfacepahm__messages_1_1logmessage.html</anchorfile>
      <anchor>aad3c7151fb7a98c62c6a0e32780b0a05</anchor>
      <arglist>(message)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>logmessage_2</name>
      <anchorfile>de/d70/interfacepahm__messages_1_1logmessage.html</anchorfile>
      <anchor>a49cd0dd0888733da97e2c39db80a35e1</anchor>
      <arglist>(level, message)</arglist>
    </member>
  </compound>
  <compound kind="interface">
    <name>pahm_messages::screenmessage</name>
    <filename>db/d81/interfacepahm__messages_1_1screenmessage.html</filename>
    <member kind="function">
      <type>subroutine</type>
      <name>screenmessage_1</name>
      <anchorfile>db/d81/interfacepahm__messages_1_1screenmessage.html</anchorfile>
      <anchor>a05183be2f908a52e788df3069e5c28c8</anchor>
      <arglist>(message)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>screenmessage_2</name>
      <anchorfile>db/d81/interfacepahm__messages_1_1screenmessage.html</anchorfile>
      <anchor>a58b004e348b749e9d88bf84b0c5f5a43</anchor>
      <arglist>(level, message)</arglist>
    </member>
  </compound>
  <compound kind="interface">
    <name>utilities::sphericaldistance</name>
    <filename>d7/d29/interfaceutilities_1_1sphericaldistance.html</filename>
    <member kind="function">
      <type>real(sz) function</type>
      <name>sphericaldistance_scalar</name>
      <anchorfile>d7/d29/interfaceutilities_1_1sphericaldistance.html</anchorfile>
      <anchor>af5045de0e4215dd0e14497092170f5b1</anchor>
      <arglist>(lat1, lon1, lat2, lon2)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function, dimension(:), allocatable</type>
      <name>sphericaldistance_1d</name>
      <anchorfile>d7/d29/interfaceutilities_1_1sphericaldistance.html</anchorfile>
      <anchor>a9b98ee5fda89508001d10f5436621887</anchor>
      <arglist>(lats, lons, lat0, lon0)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function, dimension(:, :), allocatable</type>
      <name>sphericaldistance_2d</name>
      <anchorfile>d7/d29/interfaceutilities_1_1sphericaldistance.html</anchorfile>
      <anchor>ab6a4d6ad0243fedb404dbe6ff07e72b5</anchor>
      <arglist>(lats, lons, lat0, lon0)</arglist>
    </member>
  </compound>
  <compound kind="interface">
    <name>timedateutils::splitdatetimestring</name>
    <filename>d1/daf/interfacetimedateutils_1_1splitdatetimestring.html</filename>
    <member kind="function">
      <type>subroutine</type>
      <name>splitdatetimestring</name>
      <anchorfile>d1/daf/interfacetimedateutils_1_1splitdatetimestring.html</anchorfile>
      <anchor>ab470f2a5a3e605e3a3d8f359154b3c29</anchor>
      <arglist>(inDateTime, iYear, iMonth, iDay, iHour, iMin, iSec)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>splitdatetimestring2</name>
      <anchorfile>d1/daf/interfacetimedateutils_1_1splitdatetimestring.html</anchorfile>
      <anchor>ae4e99ec4039eb29e05103be89968f374</anchor>
      <arglist>(inDateTime, iDate, iTime)</arglist>
    </member>
  </compound>
  <compound kind="interface">
    <name>sortutils::swap</name>
    <filename>d0/db6/interfacesortutils_1_1swap.html</filename>
    <member kind="function">
      <type>subroutine</type>
      <name>swapint</name>
      <anchorfile>d0/db6/interfacesortutils_1_1swap.html</anchorfile>
      <anchor>acbf510dba19de390a184449f5e655e12</anchor>
      <arglist>(a, b, mask)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>swapsingle</name>
      <anchorfile>d0/db6/interfacesortutils_1_1swap.html</anchorfile>
      <anchor>a5c8dabdd51fdfac7ec72cffb92dcf64f</anchor>
      <arglist>(a, b, mask)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>swapdouble</name>
      <anchorfile>d0/db6/interfacesortutils_1_1swap.html</anchorfile>
      <anchor>aaa7f855b718604cfb29736bb9fcc2610</anchor>
      <arglist>(a, b, mask)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>swapintvec</name>
      <anchorfile>d0/db6/interfacesortutils_1_1swap.html</anchorfile>
      <anchor>af1ede806a8fc5f967cadbe3f2b0f2a96</anchor>
      <arglist>(a, b, mask)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>swapsinglevec</name>
      <anchorfile>d0/db6/interfacesortutils_1_1swap.html</anchorfile>
      <anchor>a04352a9f51d281f5f863e21834ca5409</anchor>
      <arglist>(a, b, mask)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>swapdoublevec</name>
      <anchorfile>d0/db6/interfacesortutils_1_1swap.html</anchorfile>
      <anchor>ac55b580c9c74b0dd681692f1244c8955</anchor>
      <arglist>(a, b, mask)</arglist>
    </member>
  </compound>
  <compound kind="interface">
    <name>timedateutils::timeconv</name>
    <filename>d7/d92/interfacetimedateutils_1_1timeconv.html</filename>
    <member kind="function">
      <type>subroutine</type>
      <name>timeconvisec</name>
      <anchorfile>d7/d92/interfacetimedateutils_1_1timeconv.html</anchorfile>
      <anchor>a2f5f511b312d9f4b1bed33ecb8567b86</anchor>
      <arglist>(iYear, iMonth, iDay, iHour, iMin, iSec, timeSec)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>timeconvrsec</name>
      <anchorfile>d7/d92/interfacetimedateutils_1_1timeconv.html</anchorfile>
      <anchor>a03e2abbe51f02a02624986a3d49ec192</anchor>
      <arglist>(iYear, iMonth, iDay, iHour, iMin, rSec, timeSec)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>pahm_netcdfio::timedata_t</name>
    <filename>d8/dfa/structpahm__netcdfio_1_1timedata__t.html</filename>
    <member kind="variable">
      <type>logical</type>
      <name>initialized</name>
      <anchorfile>d8/dfa/structpahm__netcdfio_1_1timedata__t.html</anchorfile>
      <anchor>a0f63f59a101f0cc0be6dc86730750add</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>timelen</name>
      <anchorfile>d8/dfa/structpahm__netcdfio_1_1timedata__t.html</anchorfile>
      <anchor>a407caf5fb88ac16128ec3671e261fac2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>timedimid</name>
      <anchorfile>d8/dfa/structpahm__netcdfio_1_1timedata__t.html</anchorfile>
      <anchor>ade420f59b7ba1037cd1f8aa187dceb9b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>timeid</name>
      <anchorfile>d8/dfa/structpahm__netcdfio_1_1timedata__t.html</anchorfile>
      <anchor>a37bf60663a741841cdb0edb3828a5bd3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(1)</type>
      <name>timedims</name>
      <anchorfile>d8/dfa/structpahm__netcdfio_1_1timedata__t.html</anchorfile>
      <anchor>a412bb48eab8914bedf41587d3f61f1e8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>time</name>
      <anchorfile>d8/dfa/structpahm__netcdfio_1_1timedata__t.html</anchorfile>
      <anchor>a663768b7632faad17ca0ee3f0f47317c</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>csv_module</name>
    <filename>d3/d46/namespacecsv__module.html</filename>
    <class kind="type">csv_module::csv_file</class>
    <class kind="type">csv_module::csv_string</class>
    <member kind="function">
      <type>subroutine</type>
      <name>initialize_csv_file</name>
      <anchorfile>d3/d46/namespacecsv__module.html</anchorfile>
      <anchor>a9813e1ff838ed6024c464bb5c443bada</anchor>
      <arglist>(me, quote, delimiter, enclose_strings_in_quotes, enclose_all_in_quotes, logical_true_string, logical_false_string, chunk_size)</arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter, public</type>
      <name>csv_type_string</name>
      <anchorfile>d3/d46/namespacecsv__module.html</anchorfile>
      <anchor>a3cfc483ce0ca6c16b52a65593e6d9c6b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter, public</type>
      <name>csv_type_double</name>
      <anchorfile>d3/d46/namespacecsv__module.html</anchorfile>
      <anchor>a2f3670a20280d568164ae305a22523da</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter, public</type>
      <name>csv_type_integer</name>
      <anchorfile>d3/d46/namespacecsv__module.html</anchorfile>
      <anchor>ab1fe4c2137e9a04a1f12dd2a7ed53ed7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter, public</type>
      <name>csv_type_logical</name>
      <anchorfile>d3/d46/namespacecsv__module.html</anchorfile>
      <anchor>a6a9f8a700482f136af63775ba021c37d</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>csv_parameters</name>
    <filename>d1/da4/namespacecsv__parameters.html</filename>
    <member kind="variable">
      <type>integer(ip), parameter, public</type>
      <name>max_real_str_len</name>
      <anchorfile>d1/da4/namespacecsv__parameters.html</anchorfile>
      <anchor>a882ce73f3edf518653ad6ff1d7b90e9f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len= *), parameter, public</type>
      <name>default_real_fmt</name>
      <anchorfile>d1/da4/namespacecsv__parameters.html</anchorfile>
      <anchor>a8090edb12e7a9922f8262b145e93bbf1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer(ip), parameter, public</type>
      <name>max_integer_str_len</name>
      <anchorfile>d1/da4/namespacecsv__parameters.html</anchorfile>
      <anchor>ad1283bae28c7633d990dca1e6c3fc5e0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len= *), parameter, public</type>
      <name>default_int_fmt</name>
      <anchorfile>d1/da4/namespacecsv__parameters.html</anchorfile>
      <anchor>ac61c877e599126bf3f72c9b90147678b</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>csv_utilities</name>
    <filename>dc/d33/namespacecsv__utilities.html</filename>
    <member kind="function">
      <type>pure subroutine, public</type>
      <name>expand_vector</name>
      <anchorfile>dc/d33/namespacecsv__utilities.html</anchorfile>
      <anchor>a6e82721fc2fc96ab10ca4a32547e1c88</anchor>
      <arglist>(vec, n, chunk_size, val, finished)</arglist>
    </member>
    <member kind="function">
      <type>integer function, dimension(:), allocatable, public</type>
      <name>unique</name>
      <anchorfile>dc/d33/namespacecsv__utilities.html</anchorfile>
      <anchor>a6c1f008f2a5f0ec6727aa9627a9e7bc4</anchor>
      <arglist>(vec, chunk_size)</arglist>
    </member>
    <member kind="function">
      <type>subroutine, public</type>
      <name>sort_ascending</name>
      <anchorfile>dc/d33/namespacecsv__utilities.html</anchorfile>
      <anchor>a07f2d0f6e53440f20e140a6c90f8ab2f</anchor>
      <arglist>(ivec)</arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>pahm_drivermod</name>
    <filename>de/d07/namespacepahm__drivermod.html</filename>
    <member kind="function">
      <type>subroutine</type>
      <name>getprogramcmdlargs</name>
      <anchorfile>de/d07/namespacepahm__drivermod.html</anchorfile>
      <anchor>a3294ddc68b72ff9220010a8764a8afe3</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>pahm_init</name>
      <anchorfile>de/d07/namespacepahm__drivermod.html</anchorfile>
      <anchor>ae0d4b223a96ba116b38152caf6b0768c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>pahm_run</name>
      <anchorfile>de/d07/namespacepahm__drivermod.html</anchorfile>
      <anchor>a7ae4571521a5bb4eb55990dd7fb76237</anchor>
      <arglist>(nTimeSTP)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>pahm_finalize</name>
      <anchorfile>de/d07/namespacepahm__drivermod.html</anchorfile>
      <anchor>af330510561d1d60a5c566fcab929c68f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>integer, save</type>
      <name>cnttimebegin</name>
      <anchorfile>de/d07/namespacepahm__drivermod.html</anchorfile>
      <anchor>ae7f7807bc5703a8e80f0f28f27e617d6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, save</type>
      <name>cnttimeend</name>
      <anchorfile>de/d07/namespacepahm__drivermod.html</anchorfile>
      <anchor>a2c3d50482829d555447e365d727ba69f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>pahm_global</name>
    <filename>d0/dda/namespacepahm__global.html</filename>
    <member kind="function">
      <type>real(sz) function</type>
      <name>airdensity</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>afa2b239f1665acd461276bf4722ff2de</anchor>
      <arglist>(atmT, atmP, relHum)</arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>lun_screen</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ae218e35fbc7f9bb54249bc9c4db1902b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>lun_ctrl</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>adf0264b78f0d9b097f19df8ad6f858b6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>lun_inp</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a40e1281ecfc5198d5717ee6402be7df3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>lun_inp1</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a55fa3a689cd10bc3106a7fc3ce343672</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>lun_log</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a8527565a8b242558b22df939eafd9eb9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>lun_btrk</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a9fce5f831c417bd794f09374711c8420</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>lun_btrk1</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a2fe7e1dba93c61412ca4d6835055649e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>lun_out</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a809d28e8052868f0ffedfcd659edc052</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>lun_out1</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a682eaf07f364f5622814a9c6973bfe5e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>defv_gravity</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a63eba70604751f6fc525f7e1dac4dd9d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>defv_atmpress</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a0fa4b8de4f8f10c321f941a22f4acb63</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>defv_rhoair</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a3e0c6be3ba0850f38b858d0f289148e3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>defv_rhowater</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ac4a920d4c55313f10f625f3b4dce7295</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>one2ten</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a5212a689f9191e3ff32f4705d21fe0b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>ten2one</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a0bd8cca45ccb2f8b6d209121c757e9a7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>pi</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a14800eeb2c75962b36128284fc001ec7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>deg2rad</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a8d0c21c8f96c879bd3ccf10d51f54db6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>rad2deg</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a053ccab45b0fa3791cf1e7ab5bcf0185</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>basee</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aba5897303d0e0cc952c09d297d2f8542</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>rearth</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a5f049ee92d92a48b96208d47f76b430a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>nm2m</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a3080e85f089d524d3240b0da414977d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>m2nm</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>abb9c28075ccaadef0e918a66ef29667d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>kt2ms</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a22bd5a01795721b5cee1c8186a555545</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>ms2kt</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a72e5065b49420d956346bab36f1f7bce</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>omega</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a0eefe060aff9c81120501d90c4dcdf9c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>mb2pa</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a5885f1972d366720748ad071da44e84c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>mb2kpa</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aa2fa0f05e46b1504fe285de9c0d1f3d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=fnamelen)</type>
      <name>logfilename</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>acb09a80f914b7d85e69469415079f44b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(fnamelen)</type>
      <name>controlfilename</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>abed037b55b8dc2723686f6c9a0f89649</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>meshfilenamespecified</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ad320f13b6a54b790942080a14e509906</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=fnamelen)</type>
      <name>meshfilename</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aa8f6d1c5b8d0dbafc69501dd9b65f4e9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=64)</type>
      <name>meshfiletype</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a3445e2765ecb7e93fbc3d52f56c51502</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=64)</type>
      <name>meshfileform</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a435e4478f516538033ae74e34f640e1b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>besttrackfilenamespecified</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a881d459172ccb696dad4c55a78d36d72</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>nbtrfiles</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ad45b1c789812efe9093a396a261fbdd3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=fnamelen), dimension(:), allocatable</type>
      <name>besttrackfilename</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a15f59c65b7e1ab134c4949faea236cd6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=512)</type>
      <name>title</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a662f13f592a8f8a297c37bc1461468d0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>gravity</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a7ae3cd2f8e7aab45702a729bea526046</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>rhowater</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ad646fe8c70d6cb736292ec024cdf83cd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>rhoair</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ac2f4438de3c2005f7018ad4514145988</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>backgroundatmpress</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>adf51d50844bd7fafd7f0a7f3b424eeef</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>defv_bladjustfac</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aac64e91aa2b7224c8c016efd18b791ac</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>windreduction</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aefc86e728df4ef4f8e52859a4657917c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>bladjustfac</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>acd988786676e5d71161db23c57454b9c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=64)</type>
      <name>refdatetime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ab44cb70b4242c6a196e070a95f1b5732</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>refdate</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a4c035d82c2b47da1d7f348017b0f194a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>reftime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a91adddd1537a9c62e2eaabd60a88b357</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>refyear</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aadce7ffa4db233eddf8f2d743c380f49</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>refmonth</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a1dc2a33bb3baf57cfe610af9ac13bf0b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>refday</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a85a88731cd46edb05126224a2397b3de</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>refhour</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a73354efb967e7f1fb53e3d05378e3ede</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>refmin</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a115fc12f36e687cd667963741c94a650</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>refsec</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a3b49b26fc0b7f91adf1d74181d5056f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>refdatespecified</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a34711ac1e6046c08ca9cfd9a7ffec50c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=64)</type>
      <name>begdatetime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a7096a707407e38cb7f0c2540eaf37868</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>begdate</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ac21b3b9ba73caa44d25379fca1c549c9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>begtime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a7112068f94fd4b28798412e81a6f44fd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>begyear</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>abb89cde52552ac9863b18c736da8bdab</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>begmonth</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a84360ac98c5e82acc585918a1c8b227f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>begday</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aebde6bb06d9dc842febd340d87746ad0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>beghour</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a1a8ab57ad9413f3a935bf03c972bcb0b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>begmin</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a30c130878e2a1f1129f35c8a5abfe6f3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>begsec</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>afc3d74fe263441d3edb38effce4fd52a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>begdatespecified</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a4b9c7176babb3d8edd9f15159e2ebaaf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=64)</type>
      <name>enddatetime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>adfb765e4a01299867548c1ccd15d6805</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>enddate</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a46c111a64442e16e5ae52f20b56f1478</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>endtime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ac72d6d0fb869296880d05631156055ba</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>endyear</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ab393c605c47c1f3d1b409db0771ad862</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>endmonth</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>afe828af93c44f16387c511fad8c2887c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>endday</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a0e0a745de597311ef4fc4d852be07bd3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>endhour</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ac6bf6808b35a90460b34f46051e904fa</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>endmin</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a5d6b0dfbd1c3c72db107252ca203aa84</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>endsec</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ae9b3def360e70eaabed89354c2436c08</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>enddatespecified</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aaede917572ccc53c5903e4c99d60ffbd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>begsimtime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a4dfd49dc1da1aee31b7a3cf06217890a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>endsimtime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a4557a575c68ad0a0625139c5b4625483</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>begsimspecified</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ab4829c0ca523caa11a350822176b528a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>endsimspecified</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a467b6a6bef3c7c847e2e725574f6a260</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=1)</type>
      <name>unittime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a3a3e029522bc2af42287ce08ce2cf05c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>outdt</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a72ebdd28668a557d8876bea546e4d650</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>noutdt</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ad2639f6a3eaac0ffa7635365f2f537ac</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>mdoutdt</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ad887e7033e29e4bb8a04f0b3a71635b2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>mdbegsimtime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ad3464b7fcdacc5c0d55d3252aa4b23a6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>mdendsimtime</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a1ea2cf554f351131e7b0e81b08442ba5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>outfilenamespecified</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a8887c325398af6c05f6853077360839e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=fnamelen)</type>
      <name>outfilename</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a15777c2fa8b8bbb4ff3d2b478067900b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>ncshuffle</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aafc0d818d9b2956b60b6e3d8d22ab1a4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>ncdeflate</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a25b33d571fd559e4d41859bc11ed0b9c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>ncdlevel</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a58dbb9528d75532fc39a5e415c668723</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=20), parameter</type>
      <name>def_ncnam_pres</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>afba9349da39d013f27f918979523d731</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=20), parameter</type>
      <name>def_ncnam_wndx</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a21d75a825d63485dfba7292d117e15b6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=20), parameter</type>
      <name>def_ncnam_wndy</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ac89d7272962af1d6cccfae6800daf8e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=20)</type>
      <name>ncvarnam_pres</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a386a71c68894cea0bf13d08ccfe88e9f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=20)</type>
      <name>ncvarnam_wndx</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a33543d68f07310baadb1c0643a6b2ced</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=20)</type>
      <name>ncvarnam_wndy</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a2fcae265ff74db532c6c829c2b5b814e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>modeltype</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a6038d462464e57791182aa309973158e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>writeparams</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a4a3624485a83a897b5bf2d3415810794</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>wvelx</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a4c18062feb5db08e645081eb33692f2b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>wvely</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>aa43b714ff88c2cb7f5a4055168d39586</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>wpress</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>a136434a626f8e2519b58d232d9635ca4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>times</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>acba09df375969d56bf5faf3efad5b03f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(19), dimension(:), allocatable</type>
      <name>datestimes</name>
      <anchorfile>d0/dda/namespacepahm__global.html</anchorfile>
      <anchor>ae14fdc3a0d5b998076fb43c755b0d107</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>pahm_mesh</name>
    <filename>d2/dd9/namespacepahm__mesh.html</filename>
    <member kind="function">
      <type>subroutine</type>
      <name>readmesh</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a6fd7801e4cbacfd2a7ce61c0fb31073c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>readmeshasciifort14</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>af53257d02ceb6ebe4349de40187496d6</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>allocatenodalandelementalarrays</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a3ac2350cf2b06f708810684f67950e69</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>character(len=80)</type>
      <name>agrid</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>ad019b2c772e7471bb98dcce81437597e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>np</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a9d65c0219f30b755bd8f652c8393d431</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>ne</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a77ca9644e6228f1618d5e06346003a10</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>ics</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>acac1aa484a425cce8f22802b93daec22</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>dp</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a47b691e347dec0b33bfffcff4583ea55</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:), allocatable</type>
      <name>nfn</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a3c72e04c49bf1a0dfb63f5ebcd97fdda</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(:, :), allocatable</type>
      <name>nm</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>af1c6c10da887fb6e3f5e5f876ba8bc86</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>slam</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a766ff36c46ed9d0d2170d2eb2d4c11f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>sfea</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a54538ee2eee5701129a8eec5c841b196</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>xcslam</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a1c477ea7bd9196e6e8fa74867692464d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(:), allocatable</type>
      <name>ycsfea</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>ab278b6d31c209ab19b8cb946b17051f1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>slam0</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a21a1a685054cb9f57b6bbbea7e6b8708</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>sfea0</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a10555eec0c397ccc8b0446c1a4139e28</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>maxfacenodes</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a1bf78a0798b3acc58694f97b764706d3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>ismeshok</name>
      <anchorfile>d2/dd9/namespacepahm__mesh.html</anchorfile>
      <anchor>a766a41364dd002b1912af851db0f63c1</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>pahm_messages</name>
    <filename>d4/d3b/namespacepahm__messages.html</filename>
    <class kind="interface">pahm_messages::allmessage</class>
    <class kind="interface">pahm_messages::logmessage</class>
    <class kind="interface">pahm_messages::screenmessage</class>
    <member kind="function">
      <type>subroutine</type>
      <name>initlogging</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>ad2fb6cca6853de16ee45c8cdebe6190a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>openlogfile</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a4856e55c31868efd23b7f6ca723004e5</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>closelogfile</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>ac4e3ac4677b30069fdf8e71c1c6445d4</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>screenmessage_1</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a5572ed7e47d76c06eaf6a63775b4e508</anchor>
      <arglist>(message)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>screenmessage_2</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>ad2147826ba7ea43c9bbeeb651f522385</anchor>
      <arglist>(level, message)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>logmessage_1</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a35fcb921c54ef6e334a95c6b505567f0</anchor>
      <arglist>(message)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>logmessage_2</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a970017c11fbe751819090e327642f4ef</anchor>
      <arglist>(level, message)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>allmessage_1</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>aa47ab82c1278db0578d303d97d408924</anchor>
      <arglist>(message)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>allmessage_2</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a46370bbbd651ed45bb7a49926530310d</anchor>
      <arglist>(level, message)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setmessagesource</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>acf0c696cc1604842ee84a5df6d81179c</anchor>
      <arglist>(source)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>unsetmessagesource</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>ad35e9f2327aad65d4c669e3d886f54dc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>programversion</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a339ae583dc62f85245ae10374b0c677f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>programhelp</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a0bf7cabdd36155ddc9946687defee4ff</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>terminate</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a8fdeeba7e0469ebda6435518f619444b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>nscreen</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a1ecd538daf19e5201a5c9c5916f93011</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>debug</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a493629015a35acc176478fe53e512c9f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>echo</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a2a9d5e29dab51a5fa833a8987cde0b8a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>info</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a0e3974ecdb3768c76dd19110935aabeb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>warning</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a38a64580bcf33efcbee364dd8d235a42</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>error</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a1b76303291eaaaf618f186fc8033a301</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=10), dimension(5)</type>
      <name>loglevelnames</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>ae680b049a77c6cfd94dd547202cb5cd4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=50), dimension(100)</type>
      <name>messagesources</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a569fa2b4ee6160875d1e239ec3670636</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=1024)</type>
      <name>scratchmessage</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>acba9099b46a78f0d86165e9e3974e689</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=1024)</type>
      <name>scratchformat</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a33180607df48be3c8456951fcec19b04</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>sourcenumber</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a12ed4fad303d6a00566ba0de028fe1d6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>logfileopened</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>ac73e1bbc32cb8f8dfdac080f2b8bfafe</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>loginitcalled</name>
      <anchorfile>d4/d3b/namespacepahm__messages.html</anchorfile>
      <anchor>a3d934804e8d40ce7e05bd3cd8d8af339</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>pahm_netcdfio</name>
    <filename>da/dd1/namespacepahm__netcdfio.html</filename>
    <class kind="type">pahm_netcdfio::filedata_t</class>
    <class kind="type">pahm_netcdfio::timedata_t</class>
    <member kind="function">
      <type>subroutine</type>
      <name>initadcircnetcdfoutfile</name>
      <anchorfile>da/dd1/namespacepahm__netcdfio.html</anchorfile>
      <anchor>a21917504b7e9d5594375d1a48bb4cb8f</anchor>
      <arglist>(adcircOutFile)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>newadcircnetcdfoutfile</name>
      <anchorfile>da/dd1/namespacepahm__netcdfio.html</anchorfile>
      <anchor>a850b1df36d9d2d229b8b03f0558c3703</anchor>
      <arglist>(ncID, adcircOutFile)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>base_netcdfcheckerr</name>
      <anchorfile>da/dd1/namespacepahm__netcdfio.html</anchorfile>
      <anchor>aa686f5f58121595cbd368f0f0b12bfba</anchor>
      <arglist>(ierr, file, line)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>netcdfterminate</name>
      <anchorfile>da/dd1/namespacepahm__netcdfio.html</anchorfile>
      <anchor>aa0987122588b6ef883046848cfcefe0b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>writenetcdfrecord</name>
      <anchorfile>da/dd1/namespacepahm__netcdfio.html</anchorfile>
      <anchor>aaf8d794ff0adcfbca0e2d13c8b71162a</anchor>
      <arglist>(adcircOutFile, timeLoc)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setrecordcounterandstoretime</name>
      <anchorfile>da/dd1/namespacepahm__netcdfio.html</anchorfile>
      <anchor>a9247da765972aa9c8c5b0d116238416f</anchor>
      <arglist>(ncID, f, t)</arglist>
    </member>
    <member kind="variable">
      <type>type(timedata_t), save</type>
      <name>mytime</name>
      <anchorfile>da/dd1/namespacepahm__netcdfio.html</anchorfile>
      <anchor>ac1a6c82feb94d1593d9608ce9690aca6</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>pahm_sizes</name>
    <filename>d0/dee/namespacepahm__sizes.html</filename>
    <class kind="interface">pahm_sizes::comparereals</class>
    <class kind="interface">pahm_sizes::fixnearwholereal</class>
    <member kind="function">
      <type>integer function</type>
      <name>comparedoublereals</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a147e8c42dc40888b4d1bbfb29ceb65fb</anchor>
      <arglist>(rVal1, rVal2, eps)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>comparesinglereals</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a4b43a656d83547f88e80147de3e78e53</anchor>
      <arglist>(rVal1, rVal2, eps)</arglist>
    </member>
    <member kind="function">
      <type>real(hp) function</type>
      <name>fixnearwholedoublereal</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a3239d3c5bf5f30554b9c68f39c2ce32b</anchor>
      <arglist>(rVal, eps)</arglist>
    </member>
    <member kind="function">
      <type>real(sp) function</type>
      <name>fixnearwholesinglereal</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a4472044c53b98880a96871c4d4dc8f1b</anchor>
      <arglist>(rVal, eps)</arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>sp</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a8b741ce0665b33aa5bf021791235a992</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>hp</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a470ddfd6241b6b3c6107f31d49abdc87</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>int16</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>aa716df892bd25f5aee41fc51c0f35a42</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>int8</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>aa5bd2910dc7f511fad87ec6734c248e9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>int4</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>ab354ec749a927952340defe51d309b1a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>int2</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>aabbd22854360d0891b42267b98e95bbc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>int1</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a264eca6a754d69c04046580618d5c087</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>long</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a0e425b2f4b1d89f08a3fdb511cb08d1e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>llong</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>aa6603d57b5027f74386248c2f367d231</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>wp</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a2fd2edf306caf05a042ea3fbb9c69712</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>ip</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>aae03da3bb6f471dbb719630225885b78</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>sz</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>ad960943e22c3587b8edefde221a11a64</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>nbyte</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a9f0b055b035e355c26062668c5514a2d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>rmissv</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>ace8d5a1f1488191db4e76d9084143953</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>imissv</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a7e0df97d9cd2ea4874c3fc4178af5efc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>character(len=1), parameter</type>
      <name>blank</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a5f4ce60aa12dcfee3641351c8fbaea60</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>fnamelen</name>
      <anchorfile>d0/dee/namespacepahm__sizes.html</anchorfile>
      <anchor>a22faaf1e970d85a42a0076d4267967c3</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>pahm_vortex</name>
    <filename>de/d94/namespacepahm__vortex.html</filename>
    <member kind="function">
      <type>subroutine</type>
      <name>calcintensitychange</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a2c7cf08c2619746ea1c60556b6487b35</anchor>
      <arglist>(var, times, calcInt, status, order)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>uvtrans</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a68cd3f6ceb40446c3c0c6d192f8b61bb</anchor>
      <arglist>(lat, lon, times, u, v, status, order)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>uvtranspoint</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>ab5519766ad94937768730d763a1b60ea</anchor>
      <arglist>(lat1, lon1, lat2, lon2, time1, time2, u, v)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>newvortex</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a0d6e7c14014a6e29428891858e9a62ef</anchor>
      <arglist>(pinf, p0, lat, lon, vm)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>newvortexfull</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>aa3e39ffdec786880d02ec45c22b4e927</anchor>
      <arglist>(pinf, p0, lat, lon, vm)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setvortex</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>afb46a3a7951e556063be8ec3d95a02b4</anchor>
      <arglist>(pinf, p0, lat, lon)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setrmaxes</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>afec35a32a17a3ef20b24c8a693200dd0</anchor>
      <arglist>(rMaxW)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>getrmaxes</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>ab7cd240c554d0b57cbd5980646414ba4</anchor>
      <arglist>(rMaxW)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>calcrmaxes</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a580543eed13ec39a2d21135376a5f72a</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>calcrmaxesfull</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a5f7ee771ea7ff74d85f4f431886bbffb</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>fitrmaxes</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a057b1daa57ff7309fe0c66eae712d258</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>fitrmaxes4</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>adaad3a34592cbf6503b8817c4be1b6fd</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setvmaxesbl</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>adb1d4d61cb0809eb699973ec567239d3</anchor>
      <arglist>(vMaxW)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>getvmaxesbl</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>aba997224fa8147c6bdd36326ed510fbf</anchor>
      <arglist>(vMaxW)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setusevmaxesbl</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a7e71325e734bf727749e63f1d2992b3a</anchor>
      <arglist>(u)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setshapeparameter</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a032db54f236d415cab607757db794ba3</anchor>
      <arglist>(param)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>getshapeparameter</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>acdebbf3bff175f8a57b0bbfaf1540b5b</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function, dimension(4)</type>
      <name>getshapeparameters</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a6a318caea255e63a0974363afb650978</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function, dimension(4)</type>
      <name>getphifactors</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>abb7c7e54b03cd6f403c01f93d049a9d1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setisotachradii</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a7ad967d7396daacf3ef95f295de84820</anchor>
      <arglist>(ir)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setisotachwindspeeds</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a68419bdad6df6ac19750abe443efaaf2</anchor>
      <arglist>(vrQ)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>setusequadrantvr</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a57aabcc3f59fcf7075aa0f34d35cf312</anchor>
      <arglist>(u)</arglist>
    </member>
    <member kind="function">
      <type>logical function</type>
      <name>getusequadrantvr</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a632207c65211e9337eb3f016f274558d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>spinterp</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a096ca385730b45c246bbbf997a6e8b48</anchor>
      <arglist>(angle, dist, opt)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>interpr</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a27ef69f6ab3e859d5f3f55d0d34b6a02</anchor>
      <arglist>(quadVal, quadSel, quadDis)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>rmw</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>ae5616e321c85eb04b486fa78ea556773</anchor>
      <arglist>(angle)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>uvp</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a90ff68ab89a00a014a2429d42758a3f5</anchor>
      <arglist>(lat, lon, uTrans, vTrans, u, v, p)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>uvpr</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>add2e19299be51bde3c016c4702653eb0</anchor>
      <arglist>(iDist, iAngle, iRmx, iRmxTrue, iB, iVm, iPhi, uTrans, vTrans, geof, u, v, p)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>fang</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>ac953414ecaf1b96028c4258cb011658d</anchor>
      <arglist>(r, rmx)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>rotate</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a7fc78bcdd0071e81581505ac558c0e27</anchor>
      <arglist>(x, y, angle, whichWay, xr, yr)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>getlatestrmax</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>ac03267d57521ba6131e172157e13012d</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>getlatestangle</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a936cc297a827f7c645bc265e4f53f66c</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>vhwithcorifull</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a01b29cf3c18d04fb55a502f42f51af39</anchor>
      <arglist>(testRMax)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>vhwithcori</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a1e9c82cf5fb1c37ebd0629060e93d5fa</anchor>
      <arglist>(testRMax)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>vhnocori</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a758504d51e519dac32d8146e79fccd2c</anchor>
      <arglist>(testRMax)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>findroot</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a24ea19697c70ab6e010e36a71faefcbc</anchor>
      <arglist>(func, x1, x2, dx, a, b)</arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>nquads</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a3a66445e11345c89df6e5c058bb3c572</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>npoints</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a1fb78b1fa65419a5994ce0f22f42f820</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(npoints)</type>
      <name>rmaxes</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a78858c9851bd9cc4d8dc2556c1b0bb64</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(npoints, 4)</type>
      <name>rmaxes4</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a1cdb70d18270f8efba2a01244e127dec</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>pn</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>acd4aa88d9914f73fa4a6fe17a8f0369b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>pc</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a5c493b46044a72edec476d28b4d77b67</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>clat</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a8f0188b57efe26bbf135b55f9a6cf774</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>clon</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a13e18480e90cb183b50f0a2f2ef6e11d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>vmax</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>aeb1c563da0b8160021057352a6e46f69</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>b</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a82ea497dd1fddaf56fc7a0879803fa82</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>corio</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a754c7d9207087929fab19329a6a455f3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>vr</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a069a249ffa588b632ef79c4a373ced5f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>phi</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a82154b63680b9a3b7809f9df4f2c458f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(npoints)</type>
      <name>phis</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a2af0aa77c4a01e9dcd75ae9e0a6f83df</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(npoints, 4)</type>
      <name>phis4</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a43f2820ae052c662ea2eb722e31360b5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(npoints)</type>
      <name>bs</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>ae433c24eb7f394bb8c230b95b3d5b63e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(npoints, 4)</type>
      <name>bs4</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a6f3d99fff0410bf92c1515f23be415f7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(npoints)</type>
      <name>vmbl</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>ae1896e99c9402793d992c9eb4fe9903b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(npoints, 4)</type>
      <name>vmbl4</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a1f3013290dc423326dbd152a11a24633</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, dimension(npoints, 4)</type>
      <name>quadflag4</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a8d8b291552868b360a84dcacab9ef844</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(npoints, 4)</type>
      <name>quadir4</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a8ce3bd0c34544557c2820cf6e0f00e53</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(nquads)</type>
      <name>vrquadrant</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>aaedb6a3f66f5a7b1573cda37eda074a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz), dimension(nquads)</type>
      <name>radius</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a7fe6aa4c2d7fbda455bdefdaab3da84a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer</type>
      <name>quad</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a14d151900057b9e045cbb74c18885539</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>latestrmax</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>af6a57249e4c8238e1dbd7ac15f4fe199</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>latestangle</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a30395c1dc5034e8de57408f6636f4116</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>usequadrantvr</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>ae517f1ff4a1489b35c5de6b8abc17973</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>logical</type>
      <name>usevmaxesbl</name>
      <anchorfile>de/d94/namespacepahm__vortex.html</anchorfile>
      <anchor>a5a15433aedb32d3d4fff30b3dad01347</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>parwind</name>
    <filename>d9/d41/namespaceparwind.html</filename>
    <class kind="type">parwind::besttrackdata_t</class>
    <class kind="type">parwind::hollanddata_t</class>
    <member kind="function">
      <type>subroutine</type>
      <name>readbesttrackfile</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>abae6c098afd2135918a478b6b7b20673</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>readcsvbesttrackfile</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>a75c722a5d8fdb18014543923d7e4dcca</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>processhollanddata</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>a6efcf8be68b268f0a6d92ceb5f8c6f41</anchor>
      <arglist>(idTrFile, strOut, status)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>gethollandfields</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>ad2cf2a3c40591a24959e6dd126066294</anchor>
      <arglist>(timeIDX)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>writebesttrackdata</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>a7a4d6eb0de8c960ffd29e8705b11e707</anchor>
      <arglist>(inpFile, btrStruc, suffix)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>allocbtrstruct</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>a9b826e18db73886e01f39d55bf7e5b85</anchor>
      <arglist>(str, nRec)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>deallocbtrstruct</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>af91396f17ff340762da3b6da495fa690</anchor>
      <arglist>(str)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>allochollstruct</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>a7bbd86c1fc9b715f2dd8c8d340c6964c</anchor>
      <arglist>(str, nRec)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>deallochollstruct</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>a0ed4ae2d2927c042da5b0f3df42f5ef8</anchor>
      <arglist>(str)</arglist>
    </member>
    <member kind="variable">
      <type>real(sz)</type>
      <name>windreftime</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>a430089f221763f9d9cd0af0b4867af22</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>type(besttrackdata_t), dimension(:), allocatable</type>
      <name>besttrackdata</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>afc296d5f5c2c76c31bd1cc0002029901</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>type(hollanddata_t), dimension(:), allocatable</type>
      <name>holstru</name>
      <anchorfile>d9/d41/namespaceparwind.html</anchorfile>
      <anchor>a761000d7863654781602c4568eb95e58</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>sortutils</name>
    <filename>db/d34/namespacesortutils.html</filename>
    <class kind="interface">sortutils::arraycopy</class>
    <class kind="interface">sortutils::arrayequal</class>
    <class kind="interface">sortutils::arth</class>
    <class kind="interface">sortutils::indexx</class>
    <class kind="interface">sortutils::swap</class>
    <member kind="function">
      <type>subroutine</type>
      <name>indexxint</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a18b0c386234bd3336c9e185fd3f2e281</anchor>
      <arglist>(arr1D, idx1D, status)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>indexxint8</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a71ecf74a3285fdc541c1568239a0f14f</anchor>
      <arglist>(arr1D, idx1D, status)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>indexxstring</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a818ba4d77bf55b1b9e171e1c00924d55</anchor>
      <arglist>(arr1D, idx1D, status, caseSens)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>indexxsingle</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a60b2d53d05f8973577d0e193b05b4993</anchor>
      <arglist>(arr1D, idx1D, status)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>indexxdouble</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a179b0ea014c19ae081095560719d8c01</anchor>
      <arglist>(arr1D, idx1D, status)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>quicksort</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a33d62feb5c8d9983664fb4e8e6f336c0</anchor>
      <arglist>(arr1D, status)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>sort2</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a9ede2e4d77a01ef0a1c54e8dc4cf3b35</anchor>
      <arglist>(arr1D, slv1D, status)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>arraycopyint</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a005074a54859efa078736a52a1689b7a</anchor>
      <arglist>(src, dest, nCP, nNCP)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>arraycopysingle</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a6ea7cef3f1f8ff088728e471fba61546</anchor>
      <arglist>(src, dest, nCP, nNCP)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>arraycopydouble</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a337be538e34c3db0cb4073863cbf0903</anchor>
      <arglist>(src, dest, nCP, nNCP)</arglist>
    </member>
    <member kind="function">
      <type>logical function</type>
      <name>arrayequalint</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>ab9c4ed8761bdc270d474067d05512cf4</anchor>
      <arglist>(arr1, arr2)</arglist>
    </member>
    <member kind="function">
      <type>logical function</type>
      <name>arrayequalsingle</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a86b2fa7dcb152720b332628a25a46ce3</anchor>
      <arglist>(arr1, arr2)</arglist>
    </member>
    <member kind="function">
      <type>logical function</type>
      <name>arrayequaldouble</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>ad582e1335e504809e10b6216be86c8f8</anchor>
      <arglist>(arr1, arr2)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>stringlexcomp</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a7822b9599be6b22fd49ba0ad285bc3f9</anchor>
      <arglist>(str1, str2, mSensitive)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>swapint</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a38ea05ad4de58f84a113df331a89a6c3</anchor>
      <arglist>(a, b, mask)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>swapsingle</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>abc3c3423cd07fb4fe2da9fbc9b1743e0</anchor>
      <arglist>(a, b, mask)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>swapdouble</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a7961c8e1a4388802af9461d77e17db0c</anchor>
      <arglist>(a, b, mask)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>swapintvec</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>af4f205d84ba214c6e40471e45cee69a3</anchor>
      <arglist>(a, b, mask)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>swapsinglevec</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>afb0c9c1a96c1b06b2f267155ca4a01cc</anchor>
      <arglist>(a, b, mask)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>swapdoublevec</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>a4ca8f6baf733365b2949165cc4e178b2</anchor>
      <arglist>(a, b, mask)</arglist>
    </member>
    <member kind="function">
      <type>pure integer function, dimension(n)</type>
      <name>arthint</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>abda6bbfbbbff6d9c67a9342b55e8b617</anchor>
      <arglist>(first, increment, n)</arglist>
    </member>
    <member kind="function">
      <type>pure real(sp) function, dimension(n)</type>
      <name>arthsingle</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>afcf295b57e2ee9a1e372fa59c7b952b7</anchor>
      <arglist>(first, increment, n)</arglist>
    </member>
    <member kind="function">
      <type>pure real(hp) function, dimension(n)</type>
      <name>arthdouble</name>
      <anchorfile>db/d34/namespacesortutils.html</anchorfile>
      <anchor>add223e7bb9369accb22d7206bda8c454</anchor>
      <arglist>(first, increment, n)</arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>timedateutils</name>
    <filename>d4/d19/namespacetimedateutils.html</filename>
    <class kind="interface">timedateutils::gregtojulday</class>
    <class kind="interface">timedateutils::splitdatetimestring</class>
    <class kind="interface">timedateutils::timeconv</class>
    <member kind="function">
      <type>subroutine</type>
      <name>timeconvisec</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>aecff7363d62093ca61c250308c44d81f</anchor>
      <arglist>(iYear, iMonth, iDay, iHour, iMin, iSec, timeSec)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>timeconvrsec</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a06ba200273d53bc52c89a983537e00df</anchor>
      <arglist>(iYear, iMonth, iDay, iHour, iMin, rSec, timeSec)</arglist>
    </member>
    <member kind="function">
      <type>logical function</type>
      <name>leapyear</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>ac0661d72fdf8161ad7d0b30d0dc57bd6</anchor>
      <arglist>(iYear)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>yeardays</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>aca37b13adf7e4d6eba9469a5f47b0df5</anchor>
      <arglist>(iYear)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>monthdays</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a101cf9ce5907971b096d77575d8d249d</anchor>
      <arglist>(iYear, iMonth)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>dayofyear</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a82e2ed05beb5d53c80fb1c863b6934fc</anchor>
      <arglist>(iYear, iMonth, iDay)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>gregtojuldayisec</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>aef55e36ba18ec5b170232411ab9bca4b</anchor>
      <arglist>(iYear, iMonth, iDay, iHour, iMin, iSec, mJD)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>gregtojuldayrsec</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>ae97abca6832e55ab454ebcd9d81ea02e</anchor>
      <arglist>(iYear, iMonth, iDay, iHour, iMin, rSec, mJD)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>gregtojulday2</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a13cdb1276bdd39ad969c4e3cf8747a86</anchor>
      <arglist>(iDate, iTime, mJD)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>juldaytogreg</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>abc63ac16baec18b6c9bb2ee6e0400a63</anchor>
      <arglist>(julDay, iYear, iMonth, iDay, iHour, iMin, iSec, mJD)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>dayofyeartogreg</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a86f68bd48786e32c535b0564f3bdea5c</anchor>
      <arglist>(inYR, inDY, iYear, iMonth, iDay)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>splitdatetimestring</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>aea0cae13558be0360a240895e12f0265</anchor>
      <arglist>(inDateTime, iYear, iMonth, iDay, iHour, iMin, iSec)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>splitdatetimestring2</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>aefc8d34ba419aa2d839266b9ccb355b7</anchor>
      <arglist>(inDateTime, iDate, iTime)</arglist>
    </member>
    <member kind="function">
      <type>character(len=len(indatetime)) function</type>
      <name>preprocessdatetimestring</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a2561d57f398381d56d2fa94f5f9a1147</anchor>
      <arglist>(inDateTime)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>joindate</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a393203cc78370648d0dd392fe96d66ff</anchor>
      <arglist>(iYear, iMonth, iDay)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>splitdate</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a6954898ee8b7d8be2df0b30c0c167c87</anchor>
      <arglist>(inDate, iYear, iMonth, iDay)</arglist>
    </member>
    <member kind="function">
      <type>character(len=64) function</type>
      <name>datetime2string</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a565d549493d69e2c9ea5b7af18247df5</anchor>
      <arglist>(year, month, day, hour, min, sec, sep, units, zone, err)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>gettimeconvsec</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a6c7acacb9981bb9182378a449e45715b</anchor>
      <arglist>(units, invert)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>elapsedsecs</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a109255326a7eb93c3ccdb4b543c26385</anchor>
      <arglist>(inTime1, inTime2, inUnits)</arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>firstgregdate</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>ab8cb2b65a03be16286279b3dec918f1a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>firstgregtime</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a1a64948ed9bac5a8a8bafd90d27d6d7c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(hp), parameter</type>
      <name>offfirstgregday</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>ad8f352a9a5750f9116be6d916e1a6492</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>modjuldate</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a7177f8fe0187adb9e79b183c62483816</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>modjultime</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a2fd3ed89700ffd904d0089b43228391f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(hp), parameter</type>
      <name>offmodjulday</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>afb1962686bde76a2f0ec03ec908f2738</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>unixdate</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>aa229a5f1dc2d32dfb372e60a10ab7c2c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>unixtime</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>ac3aeb09ebc30455c93499b8fb930150e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(hp), parameter</type>
      <name>offunixjulday</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>ae7e3e4007a1bf2d20d44142fcf7d8c0b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>modeldate</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a5e15dbcc3fb16cbb0f6e71f276ebc700</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>modeltime</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a458bf2d4afd781d065ef0c4b6f634baf</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(hp), parameter</type>
      <name>offmodeljulday</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a5df6616f73e04115ecbcda8cfd61405c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>usemodjulday</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>aeff0a8be54a5e1c0cd161fd1be211fad</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>mdjdate</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>a36f796bbe43fcbc22afc2aa05a2f475e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>integer, parameter</type>
      <name>mdjtime</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>aba33610cf79f8d39a7ba78f3bc625547</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>real(hp), parameter</type>
      <name>mdjoffset</name>
      <anchorfile>d4/d19/namespacetimedateutils.html</anchorfile>
      <anchor>adafd87b0a51718a954f23206fc3177d2</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="namespace">
    <name>utilities</name>
    <filename>d2/d96/namespaceutilities.html</filename>
    <class kind="interface">utilities::cpptogeo</class>
    <class kind="interface">utilities::geotocpp</class>
    <class kind="interface">utilities::sphericaldistance</class>
    <member kind="function">
      <type>subroutine</type>
      <name>openfileforread</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a2a41067ed5533ec0c36318e8f1e960bf</anchor>
      <arglist>(lun, fileName, errorIO)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>readcontrolfile</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>ab095172ef12ae151ab5c9aacf82f4dc6</anchor>
      <arglist>(inpFile)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>printmodelparams</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a57953a3306e17ea2e28254e3d2091516</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>getlinerecord</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a8723656afba63e33ed1c6cc8e5440b63</anchor>
      <arglist>(inpLine, outLine, lastCommFlag)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>parseline</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>ab30d13ba0fcebcb933a30be2237ec162</anchor>
      <arglist>(inpLine, outLine, keyWord, nVal, cVal, rVal)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>checkcontrolfileinputs</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a1e2f2593103f415e1c073284ff95a83f</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>loadintvar</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a062355064a86a716b2ddff1aa0cd3fb4</anchor>
      <arglist>(nInp, vInp, nOut, vOut)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>loadlogvar</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a4e75fbe7546f8fb4163f1b8ae85bc776</anchor>
      <arglist>(nInp, vInp, nOut, vOut)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>loadrealvar</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a4a70a4be51dcd79bc46b6cfcb2d2ac0a</anchor>
      <arglist>(nInp, vInp, nOut, vOut)</arglist>
    </member>
    <member kind="function">
      <type>pure character(len(inpstring)) function</type>
      <name>tolowercase</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a376978b945cbdf5d33ff8bf905d19866</anchor>
      <arglist>(inpString)</arglist>
    </member>
    <member kind="function">
      <type>pure character(len(inpstring)) function</type>
      <name>touppercase</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a8dff395c74e87d059dadcf8bacdbfedd</anchor>
      <arglist>(inpString)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>convlon</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a7c756f058ce3e335cd942877a0217a08</anchor>
      <arglist>(inpLon)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>geotocpp_scalar</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>aea170adb23141b079617bc2824d32d47</anchor>
      <arglist>(lat, lon, lat0, lon0, x, y)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>geotocpp_1d</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>aed263ca845c3927079dc88493190e915</anchor>
      <arglist>(lat, lon, lat0, lon0, x, y)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>cpptogeo_scalar</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a0e78cb7bc0913f6070986b017d32fb08</anchor>
      <arglist>(x, y, lat0, lon0, lat, lon)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>cpptogeo_1d</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a975d96b5387531bcf6b6993cd476c51e</anchor>
      <arglist>(x, y, lat0, lon0, lat, lon)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>sphericaldistance_scalar</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>aacad1715b8a79f2e07520316fe552236</anchor>
      <arglist>(lat1, lon1, lat2, lon2)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function, dimension(:), allocatable</type>
      <name>sphericaldistance_1d</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a65f6dec547eb8e07b61b2222f2427d60</anchor>
      <arglist>(lats, lons, lat0, lon0)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function, dimension(:, :), allocatable</type>
      <name>sphericaldistance_2d</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a535cc3ff0804181360c9ba682cfeb74c</anchor>
      <arglist>(lats, lons, lat0, lon0)</arglist>
    </member>
    <member kind="function">
      <type>real(sz) function</type>
      <name>sphericaldistanceharv</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a2e123da7ff9aefba8edc1e32d89bc172</anchor>
      <arglist>(lat1, lon1, lat2, lon2)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>sphericalfracpoint</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a0ef8b9a5f7a0aac72618c3e7b05adf44</anchor>
      <arglist>(lat1, lon1, lat2, lon2, fraction, latf, lonf, distf, dist12)</arglist>
    </member>
    <member kind="function">
      <type>subroutine</type>
      <name>getlocandratio</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a35b859c005e3b9cc063bdc46a1675159</anchor>
      <arglist>(val, arrVal, idx1, idx2, wtRatio)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>charunique</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a241eabd46f9d0e4a26adc221570ad79f</anchor>
      <arglist>(inpVec, outVec, idxVec)</arglist>
    </member>
    <member kind="function">
      <type>real(sp) function</type>
      <name>valstr</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>af02043c76be30cc5e092ffaf0e28fb6d</anchor>
      <arglist>(String)</arglist>
    </member>
    <member kind="function">
      <type>real(hp) function</type>
      <name>dvalstr</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>aad75f7f3cadcd2677693859a6d525ba2</anchor>
      <arglist>(String)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>intvalstr</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a2a5c60da3dadf9f6ef913709c07dbee7</anchor>
      <arglist>(String)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>realscan</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a3101905bb797cb61841b9a73bbc419bb</anchor>
      <arglist>(String, Pos, Value)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>drealscan</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>ac6d4fd461bd13f1ca73e75038fd09fc9</anchor>
      <arglist>(String, Pos, Value)</arglist>
    </member>
    <member kind="function">
      <type>integer function</type>
      <name>intscan</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>a26a70a9de90e0016d323e4c8dbea1a5b</anchor>
      <arglist>(String, Pos, Signed, Value)</arglist>
    </member>
    <member kind="variable">
      <type>real(sz), parameter</type>
      <name>closetol</name>
      <anchorfile>d2/d96/namespaceutilities.html</anchorfile>
      <anchor>aedd7ed542085c635303806fb1a4de353</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="page">
    <name>pahm_dev_doc</name>
    <title>PaHM code</title>
    <filename>df/dbe/pahm_dev_doc.html</filename>
    <docanchor file="df/dbe/pahm_dev_doc.html">md_doc_user_guide_dev_doc</docanchor>
  </compound>
  <compound kind="page">
    <name>model</name>
    <title>Modeling System Description</title>
    <filename>dd/d8c/model.html</filename>
    <docanchor file="dd/d8c/model.html">md_doc_user_guide_model</docanchor>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>mainpage</title>
    <filename>index.html</filename>
    <docanchor file="index.html">mainpage</docanchor>
  </compound>
</tagfile>