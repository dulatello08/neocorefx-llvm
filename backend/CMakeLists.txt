add_llvm_component_group(NeoCoreFX)

set(LLVM_TARGET_DEFINITIONS NeoCoreFX.td)

tablegen(LLVM NeoCoreFXGenAsmWriter.inc -gen-asm-writer)
tablegen(LLVM NeoCoreFXGenCallingConv.inc -gen-callingconv)
tablegen(LLVM NeoCoreFXGenDAGISel.inc -gen-dag-isel)
tablegen(LLVM NeoCoreFXGenInstrInfo.inc -gen-instr-info)
tablegen(LLVM NeoCoreFXGenMCCodeEmitter.inc -gen-emitter)
tablegen(LLVM NeoCoreFXGenRegisterInfo.inc -gen-register-info)
tablegen(LLVM NeoCoreFXGenSubtargetInfo.inc -gen-subtarget)

add_public_tablegen_target(NeoCoreFXCommonTableGen)

add_llvm_target(NeoCoreFXCodeGen
  NeoCoreFXAsmPrinter.cpp
  NeoCoreFXFrameLowering.cpp
  NeoCoreFXInstrInfo.cpp
  NeoCoreFXISelDAGToDAG.cpp
  NeoCoreFXISelLowering.cpp
  NeoCoreFXRegisterInfo.cpp
  NeoCoreFXSubtarget.cpp
  NeoCoreFXTargetMachine.cpp

  LINK_COMPONENTS
  Analysis
  AsmPrinter
  CodeGen
  CodeGenTypes
  Core
  NeoCoreFXDesc
  NeoCoreFXInfo
  MC
  SelectionDAG
  Support
  Target
  TargetParser

  ADD_TO_COMPONENT
  NeoCoreFX
  )

add_subdirectory(MCTargetDesc)
add_subdirectory(TargetInfo)
