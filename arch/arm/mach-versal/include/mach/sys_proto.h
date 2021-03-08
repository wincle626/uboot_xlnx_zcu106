/* SPDX-License-Identifier: GPL-2.0+ */
/*
 * Copyright 2016 - 2018 Xilinx, Inc.
 */

enum {
	TCM_LOCK,
	TCM_SPLIT,
};

enum pm_api_id {
	PM_GET_API_VERSION = 1,
	PM_SET_CONFIGURATION,
	PM_GET_NODE_STATUS,
	PM_GET_OPERATING_CHARACTERISTIC,
	PM_REGISTER_NOTIFIER,
	PM_REQUEST_SUSPEND,
	PM_SELF_SUSPEND,
	PM_FORCE_POWERDOWN,
	PM_ABORT_SUSPEND,
	PM_REQUEST_WAKEUP,
	PM_SET_WAKEUP_SOURCE,
	PM_SYSTEM_SHUTDOWN,
	PM_REQUEST_NODE,
	PM_RELEASE_NODE,
	PM_SET_REQUIREMENT,
	PM_SET_MAX_LATENCY,
	PM_RESET_ASSERT,
	PM_RESET_GET_STATUS,
	PM_MMIO_WRITE,
	PM_MMIO_READ,
	PM_PM_INIT_FINALIZE,
	PM_FPGA_LOAD,
	PM_FPGA_GET_STATUS,
	PM_GET_CHIPID,
	PM_SECURE_SHA = 26,
	PM_SECURE_RSA,
	PM_PINCTRL_REQUEST,
	PM_PINCTRL_RELEASE,
	PM_PINCTRL_GET_FUNCTION,
	PM_PINCTRL_SET_FUNCTION,
	PM_PINCTRL_CONFIG_PARAM_GET,
	PM_PINCTRL_CONFIG_PARAM_SET,
	PM_IOCTL,
	PM_QUERY_DATA,
	PM_CLOCK_ENABLE,
	PM_CLOCK_DISABLE,
	PM_CLOCK_GETSTATE,
	PM_CLOCK_SETDIVIDER,
	PM_CLOCK_GETDIVIDER,
	PM_CLOCK_SETRATE,
	PM_CLOCK_GETRATE,
	PM_CLOCK_SETPARENT,
	PM_CLOCK_GETPARENT,
	PM_SECURE_IMAGE,
	PM_FPGA_READ = 46,
	PM_SECURE_AES,
	PM_CLOCK_PLL_GETPARAM = 49,
	PM_REGISTER_ACCESS = 52,
	PM_EFUSE_ACCESS,
	PM_FEATURE_CHECK = 63,
	PM_API_MAX,
};

#define PM_SIP_SVC	0xC2000000
#define PAYLOAD_ARG_CNT	4U

void tcm_init(u8 mode);
void mem_map_fill(void);

int versal_pm_request(u32 api_id, u32 arg0, u32 arg1, u32 arg2,
		      u32 arg3, u32 *ret_payload);
