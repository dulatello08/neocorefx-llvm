add_llvm_component_library(LLVMNeoCoreFXInfo
  NeoCoreFXTargetInfo.cpp

  LINK_COMPONENTS
  MC
  Support

  ADD_TO_COMPONENT
  NeoCoreFX
  )
