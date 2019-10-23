Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF913E2383
	for <lists+linux-rockchip@lfdr.de>; Wed, 23 Oct 2019 21:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dUdD6XDs3prM6g/0mM/vdaPEaG96sb0WetC53qoT+gQ=; b=aEc2ozvNFeV0/V
	5silrHDRsK8zyhhxGlhxjbIowva4nw4wzrpi5s8Q1iwMUX7Ggq5XXYpZScqyhN/fMWe7oeYzC9pfS
	3QlKhxqaBocAR0Ff5aNF2EV2rs67S/Gk0l31598ww5HmD53BCidLwREvpkdoJBa0DwXhwiUCPXJkk
	7fEuxdERDc4ceuKj7g783ySS6USF/aEdofTqoTPxBy508jSWFlEWeJmQR/M6AEp76zYn0HmdAx12L
	hxWZNFzp7wSOkcegbVJZLICtGRqMCSu6cf0WFg0zfsL/+BVs7dIN8BYYex775h9qwUXxg1VTlYGMK
	8LvP7nAaYbeaBuyK4elg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMky-00056t-Ik; Wed, 23 Oct 2019 19:57:20 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMkv-00054a-QP
 for linux-rockchip@lists.infradead.org; Wed, 23 Oct 2019 19:57:19 +0000
Received: by mail-pf1-x443.google.com with SMTP id c13so2377412pfp.5
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Oct 2019 12:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2IIX6hy/HPWIV2vnvPjHa7HNyD32IAzCXYHiNBs/B30=;
 b=g9UWlVYW8Po3zFXSLxXz/8DrRKXKgQ848mPNV8l+kXtzyihxl0KVjVpNQqGUMzyY5w
 JvkCbD7jJV5ytrDPW04uXxMt83WQBT77QKLwmeQMhqJvGr0MmFt+FOj3Relb/Z1YoGLR
 vqD8IaC3gyu0nqlAyL5FyWUZkzDHJyml9EnnI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2IIX6hy/HPWIV2vnvPjHa7HNyD32IAzCXYHiNBs/B30=;
 b=iJNV4oi00zc6Ni2ezkRxT3d8LGGlHbBvzD0HWheWFHvqgkPn5rF38ogbmBaQhY7meC
 3R/JUPSHzvy9Q9L911kGNLgW+/03qy1YD8O62E9goVMOp7bdCCHAQ7OqzKx+vuIIMpp+
 dFRrGIm21D4QoAzle5afTvi2UP5YWuT8kJWWqc5GwJzB+x9vRtgcohDt00E/Y0IxZ65d
 MnJqyjAV70OC9v2Nr9uZmyrqyWrU7bJc/EOdHLpVueQ+pH+nMGhIKl1AmPAIE6BQ9FYz
 PIjrYCxmQNxnOyHtkJe02CMSneaBiuwfRQDBCu5dNHMyX+gtYKPYlCu5psqJrPThS+ZD
 Apeg==
X-Gm-Message-State: APjAAAVxL94YTyTZW6WF19x+6QSF3Vfn+qJfp/o2Nko2E/q80/MrKVN5
 0EtJPneY2UGK4locgnz6uOlZOA==
X-Google-Smtp-Source: APXvYqx0NmEfeYQ7484BmbggfOppJB7ZAryjB5/f+w/OgqJusMPek6HKKGrUUuqN7KbmH4U7mV3tyw==
X-Received: by 2002:a17:90b:f10:: with SMTP id
 br16mr2085547pjb.111.1571860636881; 
 Wed, 23 Oct 2019 12:57:16 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id o185sm31499280pfg.136.2019.10.23.12.57.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 12:57:16 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v4 3/7] Makefile: rockchip: Support SPL-alone mkimage
Date: Thu, 24 Oct 2019 01:26:48 +0530
Message-Id: <20191023195652.7158-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191023195652.7158-1-jagan@amarulasolutions.com>
References: <20191023195652.7158-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_125717_871879_E9B63C61 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add SPL-alone mkimage tooling support via Makefile for
few platforms or boards used in rockchip family.

With this users would get rid of explicitly creating
mkimage tool for rockchip rksd or rkspi boot modes.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Makefile | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 40cbf68fef..b58107d6ef 100644
--- a/Makefile
+++ b/Makefile
@@ -886,7 +886,7 @@ ifeq ($(CONFIG_MPC85xx)$(CONFIG_OF_SEPARATE),yy)
 ALL-y += u-boot-with-dtb.bin
 endif
 
-ifeq ($(CONFIG_ARCH_ROCKCHIP)$(CONFIG_SPL)$(CONFIG_TPL),yyy)
+ifeq ($(CONFIG_ARCH_ROCKCHIP)$(CONFIG_SPL),yy)
 ALL-y += idbloader.img
 endif
 
@@ -1342,11 +1342,19 @@ else
 ROCKCHIP_IMG_TYPE := rksd
 endif
 
+# TPL + SPL
+ifeq ($(CONFIG_SPL)$(CONFIG_TPL),yy)
 MKIMAGEFLAGS_u-boot-tpl-rockchip.bin = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
 tpl/u-boot-tpl-rockchip.bin: tpl/u-boot-tpl.bin FORCE
 	$(call if_changed,mkimage)
 idbloader.img: tpl/u-boot-tpl-rockchip.bin spl/u-boot-spl.bin FORCE
 	$(call if_changed,cat)
+else
+MKIMAGEFLAGS_idbloader.img = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
+idbloader.img: spl/u-boot-spl.bin FORCE
+	$(call if_changed,mkimage)
+endif
+
 endif
 
 ifeq ($(CONFIG_ARCH_LPC32XX)$(CONFIG_SPL),yy)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
