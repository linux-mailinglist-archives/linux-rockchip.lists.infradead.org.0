Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE5C19C053
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 13:42:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NKKpJDLJ9N3m//dW0FZmEIO0AgKbDT6kqdFCKzxgrqc=; b=OkXBAd6oDfJmeJjH+m7dGiY4ch
	tWjC908Qx8XLhza9hCA9UG7WaGYY/HDz9jDtsfDSfD7z7u2iIjEyuHItXLRJzpQ+y31tQvdU0pmZY
	XSQEUUD4JX8nzKRIUuE9H3urFDOADk+wsh1qDrGWLksyOw9n1AaNw4bsnnu/+hG4NVGtLTgcK1o2l
	4LECPg9fztts/ep1IjlAfa9usWNXWr10itj8O+CyP5ISiUYGP/DDoK8AWdsdrBhQrb+NjI+LnN/Di
	2rm1uJIknV2v9xU9SWVY29BU3pqF49QcXxH6JjA4l4tURAjY5/1P+r1qAJ3ireCjHkc4FSzkMub0c
	EJC1uB9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJyEP-0002DE-Ex; Thu, 02 Apr 2020 11:41:57 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJyEM-0002Bs-GC
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 11:41:55 +0000
Received: by mail-pf1-x442.google.com with SMTP id c21so1635693pfo.5
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2020 04:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WRZdNM0deIoSv283K07zAk/A6gBZnVda/XJNRb/2yT4=;
 b=bWrtgsQuFnnzBdXcsbFXT19wwAIx45o1LIYxVYZozD23BqMxr7nshRaZEeTUHr35h4
 OeonsYgdIX6CgL/6r2oAR419iGOunml5NvesJWzZhQvklLnRwQUbW3AtGlO8pPavISZp
 EDBXYtjtTTX6Bg+/J65fVMWZphehffql46j4g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WRZdNM0deIoSv283K07zAk/A6gBZnVda/XJNRb/2yT4=;
 b=fS8ELtWFJIVbDCJ0foLJMVhcZKdhp1JaTbUM/nuZlL+4pGuWmJWAaTD5ZanDVYbf2e
 qNg09zAmjtDNDGZ/NLEQUCSSdDHs+zZ5KZhZcpGE4lhhpHnMFn+w7hUT26fEo36dem8i
 pU4dep3QC3AjGmDxq5vwyuwvYTCQKe5m1nNi5/GoqA5+B2dOvLBRW4ItdkCHwiqn1sCK
 1GNMGaXAUP8YF3yHlQcyHL0UPEoDUwuSUgbCnE+lWP3pUox6sg/j7gfqN0fkWzx+wJEy
 ZKurYU/ABp05n6eKbSQ1wzsk2fviodS4JhrFHtsWIE1mtnvk6iNin0OrQE+56/Q8ZcO1
 qCEw==
X-Gm-Message-State: AGi0PubjZXke0z0AkQEuCk0w/P8UEuqDPFRhMsmw8UirZLN3VWhnY765
 SyWQ5S+XJ7RnBCm2cqTcMu3W/w==
X-Google-Smtp-Source: APiQypLE+79egu39SX50fCIUVWWCiB1/pFRIWLW9FIQ7Gt26s2I5eQxihTorqEVWJN8f3hE1RT2jsA==
X-Received: by 2002:a05:6a00:2cb:: with SMTP id
 b11mr2732492pft.42.1585827713856; 
 Thu, 02 Apr 2020 04:41:53 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:3532:519d:ba6d:25e1])
 by smtp.gmail.com with ESMTPSA id i4sm3618107pjg.4.2020.04.02.04.41.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2020 04:41:53 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Anatolij Gustschin <agust@denx.de>
Subject: [PATCH v3 4/5] rockchip: Enable HDMI output on rk3399 board w/ HDMI
Date: Thu,  2 Apr 2020 17:11:24 +0530
Message-Id: <20200402114125.2501-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200402114125.2501-1-jagan@amarulasolutions.com>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_044154_536035_2347C595 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, Mark Kettenis <mark.kettenis@xs4all.nl>
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
- Rock960

Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- add rock960 hdmi out support

 configs/nanopc-t4-rk3399_defconfig   | 7 +++++++
 configs/nanopi-m4-rk3399_defconfig   | 7 +++++++
 configs/nanopi-neo4-rk3399_defconfig | 7 +++++++
 configs/roc-pc-rk3399_defconfig      | 6 ++++++
 configs/rock960-rk3399_defconfig     | 7 +++++++
 include/configs/evb_rk3399.h         | 5 +++++
 include/configs/rock960_rk3399.h     | 5 +++++
 7 files changed, 44 insertions(+)

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
diff --git a/configs/rock960-rk3399_defconfig b/configs/rock960-rk3399_defconfig
index ba4226e173..c4e954731a 100644
--- a/configs/rock960-rk3399_defconfig
+++ b/configs/rock960-rk3399_defconfig
@@ -58,5 +58,12 @@ CONFIG_USB_ETHER_ASIX88179=y
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
diff --git a/include/configs/rock960_rk3399.h b/include/configs/rock960_rk3399.h
index 746d24cbff..304ad2b7aa 100644
--- a/include/configs/rock960_rk3399.h
+++ b/include/configs/rock960_rk3399.h
@@ -6,6 +6,11 @@
 #ifndef __ROCK960_RK3399_H
 #define __ROCK960_RK3399_H
 
+#define ROCKCHIP_DEVICE_SETTINGS \
+		"stdin=serial,usbkbd\0" \
+		"stdout=serial,vidconsole\0" \
+		"stderr=serial,vidconsole\0"
+
 #include <configs/rk3399_common.h>
 
 #define CONFIG_SYS_MMC_ENV_DEV		1
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
