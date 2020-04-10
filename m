Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B091A49D2
	for <lists+linux-rockchip@lfdr.de>; Fri, 10 Apr 2020 20:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T6jwYfzPwGcG2H5xYwIriVXQ+rU2LoTy5usx71NFW/Q=; b=QncXxc/UXhOvTKVOXU85RIC61Z
	XMmWEc5eQVEnbN8rkrChU7zd+/N/m9gkTfMilnlH5jq1YDEON4PeBPJLgSl1BiUrwUOs9VRWrMmpa
	NcOZT2RDkdEr7v5ytgRRAEZIJu5DFY4mMOG8vdfBKvV2kC/A0LCzzANyahRrioCckQPZfTlO4tkOG
	3KZPYHu0kj+3EZ4zarucj5SnXJjL/M12j9vB1umyeBQNFpO3aa0qRe8XhZOvfWXCEEgfpzPj/QnJ9
	Xx835kH/5MvokYytMD7aMl6HMiY7VyhxEoBN0TKrG51SmUnsck2qKVK3OvLYZBn6NVcuHGwD4Cy75
	LICnPG3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMyN6-0005NQ-BP; Fri, 10 Apr 2020 18:27:20 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMyN1-0005Ju-Vm
 for linux-rockchip@lists.infradead.org; Fri, 10 Apr 2020 18:27:17 +0000
Received: by mail-pj1-x1043.google.com with SMTP id nu11so1039248pjb.1
 for <linux-rockchip@lists.infradead.org>; Fri, 10 Apr 2020 11:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RDC+S2pPClJt5MdFcAtW3zyRo5LPh1rQa69WeWQdF5c=;
 b=on14pUjH8PmO73uLo3op2NNL5QZ3ov0OvvBfIIXOOT4BLwpQyGlNnBhcNA3LFbe1fb
 I1nUvAGXLW5CchHyalrGRFKwQP8CN3ZZbVJ2G7XUoXeH9soQgFiUPvM5Im/W/HFGZ8Tx
 xx+iW9eHtmryv9a3X3Ve+uGh1c0VeonNF+Cac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RDC+S2pPClJt5MdFcAtW3zyRo5LPh1rQa69WeWQdF5c=;
 b=G53qE3IDBd5Zv7UvxChPAd5b+gb+fDlNVGmLHbBy5bmiLqYH6y7bNRu0FMfwYm3l4r
 o+Nfmatc8OUt0fEzjquMH9OOY9gdIhlCcH4hJtIPw2jD0wAIcshIiZ8mwegMiayatvgE
 vwMw8cxfIlGovvA0Rx/gS2r+vMR8bXXfhFSyqiZU8m9MqECMQNqMztoHWq5H+Kki4uw8
 OOlZAORUM8H/C2v2TExv3rahkJ/VEAbTuXG6DAQFfZDbBjXX/uP/JtMEsq/xR6ZJ00K8
 TwFbSiJtEUhwXvFXbGVaMdxwl+juutqhNI2DUzFaxTqqcL/K65TSWslRRd+FFLXzxKXU
 vRQw==
X-Gm-Message-State: AGi0PuYSWnllvv+CDVFRqRVXM6NU97Lr/mAPkGJ7ChsPUu9JW294GkZ6
 lReojFylLFcF/XTiRL8jozhn+w==
X-Google-Smtp-Source: APiQypKODK7Rnfvhluj346tTsrOphamuwmSNQRNFcvqcLk6DPHZ9mdef/ckCVkCDmkkCgjhNR7sc7A==
X-Received: by 2002:a17:902:8d8d:: with SMTP id
 v13mr5948511plo.260.1586543235176; 
 Fri, 10 Apr 2020 11:27:15 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:e854:42b6:1a5:a40e])
 by smtp.gmail.com with ESMTPSA id
 w90sm2214694pjj.2.2020.04.10.11.27.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 11:27:14 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Tom Rini <trini@konsulko.com>, Kever Yang <kever.yang@rock-chips.com>,
 Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 3/3] rockchip: Enable SF distro bootcmd
Date: Fri, 10 Apr 2020 23:56:31 +0530
Message-Id: <20200410182631.11951-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200410182631.11951-1-jagan@amarulasolutions.com>
References: <20200410182631.11951-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_112716_087321_2D5D3765 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable SPI flash(SF) distro boot command in Rockchip.

This distro boot will read the boot script at specific
location at the flash and start sourcing the same.

Included the SF device at the last of the target devices
list since all the rest of the devices on the list have
more possibility to boot the distribution due to the
size of the SPI flash is concern.

Cc: Tom Rini <trini@konsulko.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- update BOOT_TARGET_SF 

 include/configs/rk3399_common.h   | 1 +
 include/configs/rockchip-common.h | 9 ++++++++-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/include/configs/rk3399_common.h b/include/configs/rk3399_common.h
index 01a9174bd2..f0ae6e67a7 100644
--- a/include/configs/rk3399_common.h
+++ b/include/configs/rk3399_common.h
@@ -60,6 +60,7 @@
 #endif
 
 #include <config_distro_bootcmd.h>
+#include <environment/distro/sf.h>
 #define CONFIG_EXTRA_ENV_SETTINGS \
 	ENV_MEM_LAYOUT_SETTINGS \
 	"fdtfile=" CONFIG_DEFAULT_FDT_FILE "\0" \
diff --git a/include/configs/rockchip-common.h b/include/configs/rockchip-common.h
index b55e09a9ca..d97395db90 100644
--- a/include/configs/rockchip-common.h
+++ b/include/configs/rockchip-common.h
@@ -41,11 +41,18 @@
 	#define BOOT_TARGET_DHCP(func)
 #endif
 
+#if CONFIG_IS_ENABLED(CMD_SF)
+	#define BOOT_TARGET_SF(func)	func(SF, sf, 0)
+#else
+	#define BOOT_TARGET_SF(func)
+#endif
+
 #define BOOT_TARGET_DEVICES(func) \
 	BOOT_TARGET_MMC(func) \
 	BOOT_TARGET_USB(func) \
 	BOOT_TARGET_PXE(func) \
-	BOOT_TARGET_DHCP(func)
+	BOOT_TARGET_DHCP(func) \
+	BOOT_TARGET_SF(func)
 
 #ifdef CONFIG_ARM64
 #define ROOT_UUID "B921B045-1DF0-41C3-AF44-4C6F280D3FAE;\0"
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
