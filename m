Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DF519C054
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 13:42:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=790hAhyE5vW8cf88wBCbqzLS1O7zErEEKfby0ywe35g=; b=gp4C67J2lO+d1Fi3QrSC319STd
	oeH2IDq+95b+2dCh7HzCxCJSFu2S41kk21ela5P95jizJW+cOCHgqPfnH6ES9sWfieCFSmm7BtrOK
	8X1QoE37G1XoifltXdVSnM7rJOOPE8bfgGM6pPQA28Peogv2hOC7dcNsk1z0BJfR8KUMOWN8LQ8bv
	lQyWpSOFCe88nTYGw2uqvrZt+jn1oMAtVlcWyQDW0HYGSLHLHBZUgiVjCq1QRHyLI4SXD0WN2/kCS
	Cu1cnL+k4OiDgKKRP61NaTn3Imv6Q7Kgzdj9wLlFPHNMAgwbYDzvbMjl/A+0F+h36AMN8tzKrG+HN
	prXbEL5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJyEV-0002Gn-7z; Thu, 02 Apr 2020 11:42:03 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJyER-0002Ed-Re
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 11:42:01 +0000
Received: by mail-pg1-x541.google.com with SMTP id x7so1723145pgh.5
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2020 04:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=oIKi2o05B3Z9cSU1NF9xH472HBvt4fwkMM8ABMXFROs=;
 b=nB6TM8G57eVlmSYGAe4tHnLtxk114pG866EhkcmchUPHFt0LlR8Z3UCmnlEdyb/Pe4
 i9vqqaH6ZQgmRTWj172Argghtwlimf6hMmgcXhfbNRMSji+0z+9YWZs3aK9lq+XQmDvI
 Z6+16/b47s9EpcKhFbjeUnPJceiKgcViERFUo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=oIKi2o05B3Z9cSU1NF9xH472HBvt4fwkMM8ABMXFROs=;
 b=jDCC0tc16lcXU3WvWJ4hPv67tPpDxPcFMkBL1EmQ+VLJ5vLuXnRqrvUK/pJlBh65XX
 aH9nzN7xaNOb+eu8211yK1R6wNERWzpafsCJPagLZBcjZAlluNhGIzjTl1cb5bcAXU/F
 EssihMicNQnOPPTjVaPuyXiYff0QZzw2KmZTgglgf8BIF+jqTZPhFSVJPgCyp/IAlT9Q
 7HMQNEGqKBH+VIPbW7iK9wX3RsqWtveC/aQ4sTolM+di57XeHLFQNA4mDOx0mzrae0hP
 G7hY49mFCxHcdmCSdUqQm96knkIsHPVDjznLvuKm6PKOt0yqad9FtnsUKZwbp+4l7ZL+
 sXNA==
X-Gm-Message-State: AGi0PubBFx2H8vLz4MAB2qA/ru7UcJ+jBqwbO2Px2g13LrXHCCc7qL7U
 arnL7ycjTW6i4pjnOqWPUbN4AQ==
X-Google-Smtp-Source: APiQypKQPfM5v59ATdHn2zW07b69ZQAkS+2/ZZ0phbD/cwJ/5eVENIfLMZw84D65BWljN5lS0n55FQ==
X-Received: by 2002:a63:cb4a:: with SMTP id m10mr3060711pgi.101.1585827717799; 
 Thu, 02 Apr 2020 04:41:57 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:3532:519d:ba6d:25e1])
 by smtp.gmail.com with ESMTPSA id i4sm3618107pjg.4.2020.04.02.04.41.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2020 04:41:57 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Anatolij Gustschin <agust@denx.de>
Subject: [PATCH v3 5/5] video: rockchip: Support 4K resolution for rk3399, HDMI
Date: Thu,  2 Apr 2020 17:11:25 +0530
Message-Id: <20200402114125.2501-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200402114125.2501-1-jagan@amarulasolutions.com>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_044159_888694_E2DC38B4 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, Mark Kettenis <mark.kettenis@xs4all.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The default resolution for rockchip display is 1920x1080
which failed to work on 4K HDMI out displays on rk3399.

So, mark the default resolution as 3480x2160 for rk3399
HDMI out.

This would work all the hdmi display resolutions till
4K.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- new patch

 drivers/video/rockchip/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/video/rockchip/Kconfig b/drivers/video/rockchip/Kconfig
index 10182d0b66..cfd774ead6 100644
--- a/drivers/video/rockchip/Kconfig
+++ b/drivers/video/rockchip/Kconfig
@@ -22,6 +22,7 @@ menuconfig VIDEO_ROCKCHIP
 config VIDEO_ROCKCHIP_MAX_XRES
         int "Maximum horizontal resolution (for memory allocation purposes)"
 	depends on VIDEO_ROCKCHIP
+	default 3480 if ROCKCHIP_RK3399 && DISPLAY_ROCKCHIP_HDMI
 	default 1920
 	help
 	  The maximum horizontal resolution to support for the framebuffer.
@@ -31,6 +32,7 @@ config VIDEO_ROCKCHIP_MAX_XRES
 config VIDEO_ROCKCHIP_MAX_YRES
         int "Maximum vertical resolution (for memory allocation purposes)"
 	depends on VIDEO_ROCKCHIP
+	default 2160 if ROCKCHIP_RK3399 && DISPLAY_ROCKCHIP_HDMI
 	default 1080
 	help
 	  The maximum vertical resolution to support for the framebuffer.
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
