Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 431C2198334
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Mar 2020 20:16:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BgdIo2VAZAnVYxRgdzdl38AmATjuLHOen/c/qgp6rh4=; b=J0XqvlwKy18fkr9gpq7MYDff8g
	Gv7FHVt3Rnxhsd4OhmCo+bTDqKH0Dswav7xHFjVKe+N2YsBM9sBfLCGi1FmsRc5gljna4jbwQGU8C
	OG3LzBPvGY+Pjkv3UW9dadXmSzz3/RIjv16yQxeJtXBE/JWyClPBt8UkqOysucraZ1TQlY0wWkW5Z
	2DLYWT2RnX7A0uuE4IavNbUOKjbBXyCvuLLOFLb/4Xs1oRCtDaJDXbN4KWx1EMoK3J6I081Osxyq0
	dA/E8lLWcFnxVfWOz0MVjLeTg0Tt5UG/KSKWKUS7Ylxi+7V2d0V6zeym5kHbIsEEc7fv+VZunlBCN
	PsTqhbdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIyxr-0002Ar-Tm; Mon, 30 Mar 2020 18:16:47 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIyxl-00024M-AC
 for linux-rockchip@lists.infradead.org; Mon, 30 Mar 2020 18:16:43 +0000
Received: by mail-pl1-x636.google.com with SMTP id t4so1094029plq.12
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Mar 2020 11:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mbP8yTk1wDXX6Om+l/BmnhYz0CyI1FvoE9vWahYLyqA=;
 b=G5Jb1WTO5408/JpaNLycLIGh1E153essh/4TjchItGq2cVb7l4NBl57pF5n8P+82jo
 t98bwiDYomK1WLUvyIg+RGe6EcfKaFGtFoQmqEDiBH7Enzd1AwVhnqxRC8ZJIMOO0veE
 /mu8AR/+qT4pFbbDFG8IUHiTTPcqO7y3yD8Rk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mbP8yTk1wDXX6Om+l/BmnhYz0CyI1FvoE9vWahYLyqA=;
 b=rp5GKVZ/Y4uTZTpzne+Nv6xcLv9IbqJ6uLD6jsGAZCKgrr/BPL0XZLI1Rrfv53pfhS
 WPzNRzU8qaumXj6pNBkt3EpFVQkxwYYLYMXJ5dRy7k6jHsrKNc30v7r76k0rbNpGx7+2
 xJvTldWNnvm0uKL45k9tYcQbkbf7FPTRt5F3vfg3E2naMxjzUhPGKZTADBLVGLLu99sl
 FuSSnfuzwdag6sA775FM8zDQtHI8tfaMlGRZwW4Zue8bDm7eSMWOFlYDE7vkR6bsU5pg
 X93xYkHUWodD6a1yNDOwNCXqBdpGP2YjUZTDT4XZFpGdV69Bc2V4zjU7vtViCXJYzUAd
 3DKg==
X-Gm-Message-State: AGi0PubEMzZfeCZRvDHLVD+DTJaneb6gOPgHeriupXopn9pTYVP8YQPd
 j1q8GPa3CURvZlUtoeDdKfrB7w==
X-Google-Smtp-Source: APiQypJ81e+fixgUS2bF3LlLyuQmiIKwmBf9btwAMYYqfM1J64E5ZDmAmkiEGrol/dV7WVg/Ob05tQ==
X-Received: by 2002:a17:90a:c583:: with SMTP id l3mr713589pjt.84.1585592200261; 
 Mon, 30 Mar 2020 11:16:40 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b95e:3742:c972:389e])
 by smtp.gmail.com with ESMTPSA id p7sm207452pjp.1.2020.03.30.11.16.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 11:16:39 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Anatolij Gustschin <agust@denx.de>
Subject: [PATCH v2 4/4] rockchip: Enable HDMI output on rk3399 board w/ HDMI
Date: Mon, 30 Mar 2020 23:46:13 +0530
Message-Id: <20200330181613.29462-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200330181613.29462-1-jagan@amarulasolutions.com>
References: <20200330181613.29462-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_111641_587699_62BCF28F 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:636 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable config options and console setting to respective
rk3399 board for HDMI output.

Boards supported and tested on this patch are:
- NanoPc T4
- NanoPi M4
- NanoPi Neo4
- ROC-RK3399-PC

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- use usbkbd in stdin
- enable USB_KEYBOARD

 configs/nanopc-t4-rk3399_defconfig   | 7 +++++++
 configs/nanopi-m4-rk3399_defconfig   | 7 +++++++
 configs/nanopi-neo4-rk3399_defconfig | 7 +++++++
 configs/roc-pc-rk3399_defconfig      | 6 ++++++
 include/configs/evb_rk3399.h         | 5 +++++
 5 files changed, 32 insertions(+)

diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk3399_defconfig
index 9ea9b11574..607a00dbf7 100644
--- a/configs/nanopc-t4-rk3399_defconfig
+++ b/configs/nanopc-t4-rk3399_defconfig
@@ -52,5 +52,12 @@ CONFIG_USB_ETHER_ASIX88179=y
 CONFIG_USB_ETHER_MCS7830=y
 CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
+CONFIG_USB_KEYBOARD=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
+CONFIG_DM_VIDEO=y
+CONFIG_VIDEO_BPP16=y
+CONFIG_VIDEO_BPP32=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
diff --git a/configs/nanopi-m4-rk3399_defconfig b/configs/nanopi-m4-rk3399_defconfig
index ad0e808bf6..3fcb7ac2d7 100644
--- a/configs/nanopi-m4-rk3399_defconfig
+++ b/configs/nanopi-m4-rk3399_defconfig
@@ -52,5 +52,12 @@ CONFIG_USB_ETHER_ASIX88179=y
 CONFIG_USB_ETHER_MCS7830=y
 CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
+CONFIG_USB_KEYBOARD=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
+CONFIG_DM_VIDEO=y
+CONFIG_VIDEO_BPP16=y
+CONFIG_VIDEO_BPP32=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
diff --git a/configs/nanopi-neo4-rk3399_defconfig b/configs/nanopi-neo4-rk3399_defconfig
index d038a8cab9..b9ea535e43 100644
--- a/configs/nanopi-neo4-rk3399_defconfig
+++ b/configs/nanopi-neo4-rk3399_defconfig
@@ -52,5 +52,12 @@ CONFIG_USB_ETHER_ASIX88179=y
 CONFIG_USB_ETHER_MCS7830=y
 CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
+CONFIG_USB_KEYBOARD=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
+CONFIG_DM_VIDEO=y
+CONFIG_VIDEO_BPP16=y
+CONFIG_VIDEO_BPP32=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index d540a17aeb..be76524cef 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -59,3 +59,9 @@ CONFIG_USB_ETHER_SMSC95XX=y
 CONFIG_USB_KEYBOARD=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
+CONFIG_DM_VIDEO=y
+CONFIG_VIDEO_BPP16=y
+CONFIG_VIDEO_BPP32=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
diff --git a/include/configs/evb_rk3399.h b/include/configs/evb_rk3399.h
index c0b0358893..2d3db22877 100644
--- a/include/configs/evb_rk3399.h
+++ b/include/configs/evb_rk3399.h
@@ -6,6 +6,11 @@
 #ifndef __EVB_RK3399_H
 #define __EVB_RK3399_H
 
+#define ROCKCHIP_DEVICE_SETTINGS \
+		"stdin=serial,usbkbd\0" \
+		"stdout=serial,vidconsole\0" \
+		"stderr=serial,vidconsole\0"
+
 #include <configs/rk3399_common.h>
 
 #if defined(CONFIG_ENV_IS_IN_MMC)
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
