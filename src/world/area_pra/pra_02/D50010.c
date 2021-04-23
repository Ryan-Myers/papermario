#include "pra_02.h"

#include "world/common/reflection.inc.c"

#include "world/common/GetNpcCollisionHeight.inc.c"

#include "world/common/AddPlayerHandsOffset.inc.c"

INCLUDE_ASM(s32, "world/area_pra/pra_02/D50010", func_8024114C_D5113C);
/*
ApiStatus N(func_8024114C_D5113C)(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32* ptr;

    if (isInitialCall) {
        ptr = &D_80241CCC_BE0A5C;
        *ptr = 0;
    }

    ptr = &D_80241CCC_BE0A5C;
    if (*ptr != NULL) {
        ptr = &D_80241CCC_BE0A5C;
        *ptr = 0;
        set_variable(script, *args, D_80241CD0_BE0A60);
        return ApiStatus_DONE2;
    }

    return ApiStatus_BLOCK;
}
*/

INCLUDE_ASM(s32, "world/area_pra/pra_02/D50010", func_802411A0_D51190);
/*
ApiStatus N(func_802411A0_D51190)(ScriptInstance* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;

    D_80241CD0_BE0A60 = get_variable(script, *args);
    D_80241CCC_BE0A5C = 1;
    return ApiStatus_DONE2;
}
*/

INCLUDE_ASM(s32, "world/area_pra/pra_02/D50010", func_802411D8_D511C8);

INCLUDE_ASM(s32, "world/area_pra/pra_02/D50010", func_80241274_D51264);

INCLUDE_ASM(s32, "world/area_pra/pra_02/D50010", func_80241310_D51300);

#include "world/common/GetEntityPosition.inc.c"

INCLUDE_ASM(s32, "world/area_pra/pra_02/D50010", func_80241478_D51468);

INCLUDE_ASM(s32, "world/area_pra/pra_02/D50010", func_802414A8_D51498);

#include "world/common/SetEntityFlags100000.inc.c"

#define NAMESPACE dup_pra_02
#include "world/common/GetEntityPosition.inc.c"
#define NAMESPACE pra_02