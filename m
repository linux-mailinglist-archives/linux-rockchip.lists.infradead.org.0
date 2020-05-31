Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B94B1E98B6
	for <lists+linux-rockchip@lfdr.de>; Sun, 31 May 2020 18:02:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:Mime-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sz0Yu7e9Vj8UwSPpVoa+BGIw9S5IXU6P0h1NQ/7K8Uc=; b=ZH0ExCC2BnMEXg
	G2liaY6FSr370aSgR4rts3rDrLErn7Gh7EZQUYJIMZuquSY/T9a+Dx9r9lsKcJ9BsJW37k0pCFAFA
	sk8s9WndCRYyp4Tl+5tW8g7qJBAfMu8SgXkLVk7VP/r9yTySk95/Sb4lP+yW04Z9bZCloFMYHgl5Q
	rYKhsPM/X8afTjMoPZbjkEXVCEILAWCZePfgQQZ9H040Vpma5w7xSfmFfmhekgnW2hmetOMzYTHWE
	+L9g3Rm+NIZ3dEOo5sAkVDLIxtl3DQBcu4HpK3plz7vS4XiqlnrveB1c9rvymU45UX9AXBiTFokwY
	l104iB/NPcSdiBzcHDKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfQPv-0007p2-IQ; Sun, 31 May 2020 16:02:31 +0000
Received: from smtpbg502.qq.com ([203.205.250.69] helo=smtpbg.qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfQPr-0007ir-Mk
 for linux-rockchip@lists.infradead.org; Sun, 31 May 2020 16:02:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foxmail.com;
 s=s201512; t=1590940932;
 bh=UVR1Hol1CTlcq1lcZfIgKRxgUemN0Vn9Crb6CPKcRq0=;
 h=From:To:Subject:Mime-Version:Date:Message-ID;
 b=hE8qlYd8CWJA5lC7FcX2coBbx72zagYX6aGLNToju2akTMifgXTwudhkBmUK5l5b0
 8a5OtLTApLCEd/MT6mZbVosD/JiNBgGZW8F06zUyo9b+5qMHJHBBJ7p6VcGaDKD3K3
 Ur1oEZ5f227iRA5flT/AgEMo1IqY8b4s5Wduvd3k=
X-QQ-FEAT: y+vehiv3GLsQww+Wy+RkyKcF+Na9uWTQOir+MKy65AaYFzc3/THO//onsuCBF
 ++UMPShxU68hXG/mWBFCz7SXbmtMFbvwhe6tPAouEE2iSvcVCJLcw3vDDVUgaj4bg/GJGcA
 Xh6gVN1CTL91s4PguQjHeerPHQ7+4ala+DdruhiU5EKmuh14HSOFDwvWfPSITCW8OZ8NSzM
 JuG6YZoOaJwoTi8HvpXUmZOgVummJcsjkk3Jo19saOmxNat7xK3nRf317Rclh9aI/loqFly
 Oemr+fa4YpSUKOAvD1XIDYxYT/Fly4hMk0+Xv3SYZmbv02
X-QQ-SSF: 00000000000000F000000000000000Z
X-QQ-XMAILINFO: NaP/9vkEGeDXYRUsmL86lP7wjL7gazNCrnQVJZSoGRh/l1dp5Qx08K9kRfbly2
 XN7eCk2QkG5aBJ23Yuj7YbxIBC3iXVmmJ1ZjTfhvNtfVs2PG6pla4/+t2v502o7Q3KzlOwSwaA9cM
 YmSPYeQfM7YY89UeM+c/BxkVjiByrIA1lurcXojiNcunmIojZVCf4iy9ZGzUCLmgsf6E3bHm4RLwo
 U9xU5R5mxks8yXI5jD8DXoU56AaqhrQ5rS+L1dPA1WyHUREhLfPtXjddvwPgEET1K381VGbh6pa3a
 QK9CtTozZSI9nRO2bSqYgFzSePaMi5IfN45q9cMIJAHsnIeGEkXlBPwKKGBzWV8ocmGVe1aoVQAdO
 YTa1gn3ewIQKYqp5cQE4WlaJnvIHHP0dYq6n2IoS91YqncGzmNkEpQeFHO5JXclSxBez8YOg21oLI
 IYWkxHVPzZZCJUYuzdyRYW5t1Um00xA6262i57v1N9R3E9ZBJGavkpp3S41/y5GuwXL8iiLaiWQSV
 J+PlzGZupxPxG73p0VANV4MEbMbUckHQwmW2RF7snzbHOKP/QWBytxhyGgPzizXp+c+tTeY8aMAUh
 Mzh7zd+H1e1gc2NnzUw+HkET7jh4dYJyPDOxG5j6ws3gmKwf1m/eA6U8nE2s13QYq3PINpD11UWRm
 QM1vTbBJOitK9cOhaRt4099e2OH0M5VaURLeCNzJaSnKOG4WrnwXGZxYApKmavllh2EnR99akVegr
 iVCjRdKiGt8jpmA==
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 255.3.54.152
X-QQ-STYLE: 
X-QQ-mid: webmail321t1590940931t7617504
From: "=?utf-8?B?Yi5sLmh1YW5n?=" <banglang.huang@foxmail.com>
To: "=?utf-8?B?dS1ib290?=" <u-boot@lists.denx.de>
Subject: [PATCHv5][2/2] rockchip: rk3328: add rock-pi-e-rk3328_defconfig file
Mime-Version: 1.0
Date: Mon, 1 Jun 2020 00:02:11 +0800
X-Priority: 3
Message-ID: <tencent_F69432040DE3A0ED4FE96B829EA38AC2BD09@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Mon, 01 Jun 2020 00:02:12 +0800 (CST)
Feedback-ID: webmail:foxmail.com:bgweb:bgweb1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_090228_054117_F4405316 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: 1.9 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.205.250.69 listed in list.dnswl.org]
 1.3 RCVD_ILLEGAL_IP        Received: contains illegal IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [banglang.huang[at]foxmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: =?utf-8?B?cGhpbGlwcC50b21zaWNo?= <philipp.tomsich@theobroma-systems.com>,
 =?utf-8?B?dHJpbmk=?= <trini@konsulko.com>,
 =?utf-8?B?Q2hlbi1ZdSZuYnNwO1RzYWk=?= <wens@kernel.org>,
 =?utf-8?B?a2V2ZXIueWFuZw==?= <kever.yang@rock-chips.com>,
 =?utf-8?B?bGludXgtcm9ja2NoaXA=?= <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This commit add the default configuration file and relevant description
for rock-pi-e board

Signed-off-by: Banglang Huang <banglang.huang@foxmail.com>
---
 board/rockchip/evb_rk3328/MAINTAINERS |   7 ++
 configs/rock-pi-e-rk3328_defconfig    | 104 ++++++++++++++++++++++++++
 doc/board/rockchip/rockchip.rst       |   1 +
 3 files changed, 112 insertions(+)
 create mode 100644 configs/rock-pi-e-rk3328_defconfig

diff --git a/board/rockchip/evb_rk3328/MAINTAINERS b/board/rockchip/evb_rk3328/MAINTAINERS
index 89becf41c5..e7dd59ff4e 100644
--- a/board/rockchip/evb_rk3328/MAINTAINERS
+++ b/board/rockchip/evb_rk3328/MAINTAINERS
@@ -17,3 +17,10 @@ M:      Matwey V. Kornilov <matwey.kornilov@gmail.com>
 S:      Maintained
 F:      configs/rock64-rk3328_defconfig
 F:      arch/arm/dts/rk3328-rock64-u-boot.dtsi
+
+ROCKPIE-RK3328
+M:      Banglang Huang <banglang.huang@foxmail.com>
+S:      Maintained
+F:      configs/rock-pi-e-rk3328_defconfig
+F:      arch/arm/dts/rk3328-rock-pi-e.dts
+F:      arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi
diff --git a/configs/rock-pi-e-rk3328_defconfig b/configs/rock-pi-e-rk3328_defconfig
new file mode 100644
index 0000000000..759838775f
--- /dev/null
+++ b/configs/rock-pi-e-rk3328_defconfig
@@ -0,0 +1,104 @@
+CONFIG_ARM=y
+CONFIG_ARCH_ROCKCHIP=y
+CONFIG_SYS_TEXT_BASE=0x00200000
+CONFIG_SPL_GPIO_SUPPORT=y
+CONFIG_ENV_OFFSET=0x3F8000
+CONFIG_ROCKCHIP_RK3328=y
+CONFIG_TPL_ROCKCHIP_COMMON_BOARD=y
+CONFIG_TPL_LIBCOMMON_SUPPORT=y
+CONFIG_TPL_LIBGENERIC_SUPPORT=y
+CONFIG_SPL_DRIVERS_MISC_SUPPORT=y
+CONFIG_SPL_STACK_R_ADDR=0x4000000
+CONFIG_SPL_SYS_MALLOC_F_LEN=0x4000
+CONFIG_NR_DRAM_BANKS=1
+CONFIG_DEBUG_UART_BASE=0xFF130000
+CONFIG_DEBUG_UART_CLOCK=24000000
+CONFIG_SMBIOS_PRODUCT_NAME="rock-pi-e_rk3328"
+CONFIG_DEBUG_UART=y
+CONFIG_TPL_SYS_MALLOC_F_LEN=0x800
+# CONFIG_ANDROID_BOOT_IMAGE is not set
+CONFIG_FIT=y
+CONFIG_FIT_VERBOSE=y
+CONFIG_SPL_LOAD_FIT=y
+CONFIG_DEFAULT_FDT_FILE="rockchip/rk3328-rock-pi-e.dtb"
+CONFIG_MISC_INIT_R=y
+# CONFIG_DISPLAY_CPUINFO is not set
+CONFIG_DISPLAY_BOARDINFO_LATE=y
+# CONFIG_SPL_RAW_IMAGE_SUPPORT is not set
+CONFIG_TPL_SYS_MALLOC_SIMPLE=y
+CONFIG_SPL_STACK_R=y
+CONFIG_SPL_I2C_SUPPORT=y
+CONFIG_SPL_POWER_SUPPORT=y
+CONFIG_SPL_STACK_R_MALLOC_SIMPLE_LEN=0x10000
+CONFIG_SPL_ATF=y
+CONFIG_SPL_ATF_NO_PLATFORM_PARAM=y
+CONFIG_TPL_DRIVERS_MISC_SUPPORT=y
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_GPT=y
+CONFIG_CMD_MMC=y
+CONFIG_CMD_USB=y
+CONFIG_CMD_TIME=y
+CONFIG_SPL_OF_CONTROL=y
+CONFIG_TPL_OF_CONTROL=y
+CONFIG_DEFAULT_DEVICE_TREE="rk3328-rock-pi-e"
+CONFIG_OF_SPL_REMOVE_PROPS="clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
+CONFIG_TPL_OF_PLATDATA=y
+CONFIG_ENV_IS_IN_MMC=y
+CONFIG_SYS_RELOC_GD_ENV_ADDR=y
+CONFIG_NET_RANDOM_ETHADDR=y
+CONFIG_TPL_DM=y
+CONFIG_REGMAP=y
+CONFIG_SPL_REGMAP=y
+CONFIG_TPL_REGMAP=y
+CONFIG_SYSCON=y
+CONFIG_SPL_SYSCON=y
+CONFIG_TPL_SYSCON=y
+CONFIG_CLK=y
+CONFIG_SPL_CLK=y
+CONFIG_FASTBOOT_BUF_ADDR=0x800800
+CONFIG_FASTBOOT_CMD_OEM_FORMAT=y
+CONFIG_ROCKCHIP_GPIO=y
+CONFIG_SYS_I2C_ROCKCHIP=y
+CONFIG_MMC_DW=y
+CONFIG_MMC_DW_ROCKCHIP=y
+CONFIG_SF_DEFAULT_SPEED=20000000
+CONFIG_DM_ETH=y
+CONFIG_ETH_DESIGNWARE=y
+CONFIG_GMAC_ROCKCHIP=y
+CONFIG_PHY=y
+CONFIG_PINCTRL=y
+CONFIG_SPL_PINCTRL=y
+CONFIG_DM_PMIC=y
+CONFIG_PMIC_RK8XX=y
+CONFIG_SPL_DM_REGULATOR=y
+CONFIG_REGULATOR_PWM=y
+CONFIG_SPL_DM_REGULATOR_FIXED=y
+CONFIG_DM_REGULATOR_FIXED=y
+CONFIG_REGULATOR_RK8XX=y
+CONFIG_PWM_ROCKCHIP=y
+CONFIG_RAM=y
+CONFIG_SPL_RAM=y
+CONFIG_TPL_RAM=y
+CONFIG_DM_RESET=y
+CONFIG_BAUDRATE=1500000
+CONFIG_DEBUG_UART_SHIFT=2
+CONFIG_DEBUG_UART_ANNOUNCE=y
+CONFIG_DEBUG_UART_SKIP_INIT=y
+CONFIG_SYSRESET=y
+# CONFIG_TPL_SYSRESET is not set
+CONFIG_USB=y
+CONFIG_USB_XHCI_HCD=y
+CONFIG_USB_XHCI_DWC3=y
+CONFIG_USB_EHCI_HCD=y
+CONFIG_USB_EHCI_GENERIC=y
+CONFIG_USB_OHCI_HCD=y
+CONFIG_USB_OHCI_GENERIC=y
+CONFIG_USB_DWC2=y
+CONFIG_USB_DWC3=y
+# CONFIG_USB_DWC3_GADGET is not set
+CONFIG_USB_GADGET=y
+CONFIG_USB_GADGET_DWC2_OTG=y
+CONFIG_SPL_TINY_MEMSET=y
+CONFIG_TPL_TINY_MEMSET=y
+CONFIG_ERRNO_STR=y
+CONFIG_SMBIOS_MANUFACTURER="radxa"
diff --git a/doc/board/rockchip/rockchip.rst b/doc/board/rockchip/rockchip.rst
index 7b72fab496..e7dee7d0ac 100644
--- a/doc/board/rockchip/rockchip.rst
+++ b/doc/board/rockchip/rockchip.rst
@@ -48,6 +48,7 @@ List of mainline supported rockchip boards:
      - Rockchip Evb-RK3328 (evb-rk3328)
      - Pine64 Rock64 (rock64-rk3328)
      - Firefly-RK3328 (roc-cc-rk3328)
+     - Radxa Rockpi E (rock-pi-e-rk3328)
 * rk3368
      - GeekBox (geekbox)
      - PX5 EVB (evb-px5)
-- 
2.17.1
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
