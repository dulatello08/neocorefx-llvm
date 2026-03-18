add_llvm_component_library(LLVMNeoCoreFXDesc
  NeoCoreFXAsmBackend.cpp
  NeoCoreFXELFObjectWriter.cpp
  NeoCoreFXInstPrinter.cpp
  NeoCoreFXMCAsmInfo.cpp
  NeoCoreFXMCCodeEmitter.cpp
  NeoCoreFXMCTargetDesc.cpp

  LINK_COMPONENTS
  NeoCoreFXInfo
  MC
  Support
  TargetParser

  ADD_TO_COMPONENT
  NeoCoreFX
)
