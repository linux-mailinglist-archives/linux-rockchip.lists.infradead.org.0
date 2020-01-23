Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A0B146E72
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Jan 2020 17:29:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irHO8+gsiiRXb7I+Nef0IL/D7zlxrQk2/JPiYzHSrGo=; b=fCNmFX08/hwHPU
	+fXL/ESdfS8utkl1FsPOeopaBW23oBUfQuP/3/Acg4HUZ67RWKYvfeL8Za9nGSgSFpObV+mFLHdFo
	rrXZ/KnFXwqJA4Otw9PLRPxvi5djS8qDda8LfYeIdwo6vX7w/kxixtcgi5bh+OHQQdNIGkdqOHGKL
	bkx9jJzV6wCVtgJ8YcnpaZk2ponCK9BQvu5aiItmiIAOAFhrfLvaZjIWbiQn+mwHbVG/LM77Ou1XE
	al6elWwhb3IocaxCx2ham+jFKQbrvkeSFWoHPYdqbrqSgle6b6bMauzNMremvEFnM6S+tE2LbidNB
	0TAFRywDsnnFZP9KB2iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iufMF-0007dP-EB; Thu, 23 Jan 2020 16:29:27 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iufMC-0007bA-Ln
 for linux-rockchip@lists.infradead.org; Thu, 23 Jan 2020 16:29:26 +0000
Received: by mail-pg1-x543.google.com with SMTP id k3so1632537pgc.3
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2020 08:29:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=baaDoeDkotpglxjsNTDoBouhmXKpmsImZXmCo5dx/Oo=;
 b=CGRx2/w0keMNPfkwqURXY+7XRkvcPVE77a0IdSvFXU4caClfNq/+LeKQTa8Jgnrnqu
 JPksD9LJKvL6fNnuOXCZcggGhSYfMCToiy1Zah91zD1hVspDQHDWBtq77L6eefPSPZRp
 RZJFD8prL0cSWjMYrbLi63kNOHkeavm9Eoq5Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=baaDoeDkotpglxjsNTDoBouhmXKpmsImZXmCo5dx/Oo=;
 b=oC/0cP/dKx072vVtFzJEQhnKcQZaBkdpwZRFpwrvYsg/jWDm0lC7UcZl1nc7LTspcr
 P9OJV9LEB8HmQAXH3ky4MJNsWogV655pEBOmzGtCgVgMpiWcLCgJd7k5NvW88QMIlNVF
 egLwnADuATJm+AuBIBhYv1ECWZCk6Vtaz1MtDi5jJNmR1I8ej3FZPSF0F3cq6dJ/aG2n
 Ex9YNVxutkYaDwU8r7kMhceGKdTqDDfA1fTGYrk4fkIWRjsJ0S1YxkgqZb2sPCkvsGOH
 RcmXUpnZenwVGqrQN1L2lqFaY4gqeiEYkT1pU2JEnJ2UE5xZmcHdE1JtVlV25K/6uFtG
 4wxA==
X-Gm-Message-State: APjAAAU3vELZr0ZiuZYME7otCClPo68puhalylG78sBvVSbvcXR4VxS7
 OZXXjmshMs+5qg1lcn/P05UOyw==
X-Google-Smtp-Source: APXvYqyh/tlOIxtYfiIwgoIlAluCLps5+vYnNlq2RooEWtM1qZBU5Dh7KFC/JZG3SidRkcXXMwB6EQ==
X-Received: by 2002:a63:213:: with SMTP id 19mr4818279pgc.160.1579796963913;
 Thu, 23 Jan 2020 08:29:23 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.109])
 by smtp.gmail.com with ESMTPSA id u1sm3188909pfn.133.2020.01.23.08.29.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 08:29:23 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 4/4] rockchip: Enable HDMI output on rk3399 board w/ HDMI
Date: Thu, 23 Jan 2020 21:58:45 +0530
Message-Id: <20200123162845.10651-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200123162845.10651-1-jagan@amarulasolutions.com>
References: <20200123162845.10651-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_082924_721171_51A985FB 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 linux-rockchip@lists.infradead.org
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
 configs/nanopc-t4-rk3399_defconfig   | 6 ++++++
 configs/nanopi-m4-rk3399_defconfig   | 6 ++++++
 configs/nanopi-neo4-rk3399_defconfig | 6 ++++++
 configs/roc-pc-rk3399_defconfig      | 6 ++++++
 include/configs/evb_rk3399.h         | 5 +++++
 5 files changed, 29 insertions(+)

diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk3399_defconfig
index bd6d60ff6c..17e8a18d31 100644
--- a/configs/nanopc-t4-rk3399_defconfig
+++ b/configs/nanopc-t4-rk3399_defconfig
@@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
+CONFIG_DM_VIDEO=y
+CONFIG_VIDEO_BPP16=y
+CONFIG_VIDEO_BPP32=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
diff --git a/configs/nanopi-m4-rk3399_defconfig b/configs/nanopi-m4-rk3399_defconfig
index 74ede13c23..b73b2fdc27 100644
--- a/configs/nanopi-m4-rk3399_defconfig
+++ b/configs/nanopi-m4-rk3399_defconfig
@@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
+CONFIG_DM_VIDEO=y
+CONFIG_VIDEO_BPP16=y
+CONFIG_VIDEO_BPP32=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
diff --git a/configs/nanopi-neo4-rk3399_defconfig b/configs/nanopi-neo4-rk3399_defconfig
index a44124aac0..2ecb50967b 100644
--- a/configs/nanopi-neo4-rk3399_defconfig
+++ b/configs/nanopi-neo4-rk3399_defconfig
@@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
+CONFIG_DM_VIDEO=y
+CONFIG_VIDEO_BPP16=y
+CONFIG_VIDEO_BPP32=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index 3a051d9b0c..a9f99f992d 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -56,3 +56,9 @@ CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
+CONFIG_DM_VIDEO=y
+CONFIG_VIDEO_BPP16=y
+CONFIG_VIDEO_BPP32=y
+CONFIG_DISPLAY=y
+CONFIG_VIDEO_ROCKCHIP=y
+CONFIG_DISPLAY_ROCKCHIP_HDMI=y
diff --git a/include/configs/evb_rk3399.h b/include/configs/evb_rk3399.h
index c0b0358893..09eb361655 100644
--- a/include/configs/evb_rk3399.h
+++ b/include/configs/evb_rk3399.h
@@ -6,6 +6,11 @@
 #ifndef __EVB_RK3399_H
 #define __EVB_RK3399_H
 
+#define ROCKCHIP_DEVICE_SETTINGS \
+		"stdin=serial,cros-ec-keyb\0" \
+		"stdout=serial,vidconsole\0" \
+		"stderr=serial,vidconsole\0"
+
 #include <configs/rk3399_common.h>
 
 #if defined(CONFIG_ENV_IS_IN_MMC)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
