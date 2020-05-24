Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E163B1E0128
	for <lists+linux-rockchip@lfdr.de>; Sun, 24 May 2020 19:33:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MGk499aD3oEzZ8Qd7hXo8wOlow41DoZI8f3uJCPUIfQ=; b=alNDI8UraT1Cqs
	pP51TIgHBsW5bmxSIfcP0M83w8QlEk7y6MMaebael0U5Z4lpCxHjEiIdsYifJMik2O3lpKxSbjuWe
	RZ8zlhT8KZHM+CGXOOAxEobcMKQEt19cnPTPeXN39P7pX8aY8Z4+IwZYYYMcY1SQQy+l9GlRCFSkF
	mGE2/jwmCZ5UIK/21a0yaa8w7iO4oZo5UsHkPG1rNDeU6Zo86f9u7DVmBPv5AAGlABVNwZXdAZzxT
	c260iiclQw3kfASHHccrPKfH8JPIKoNqOodZ71TYq6Qgn2A3Ej/N3tYmXrZPI+6orYqvnj1FUTOqH
	ztE8a6h6O3cmf1Zdso3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcuUq-0004kp-9o; Sun, 24 May 2020 17:33:12 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcuUn-0004kS-8H
 for linux-rockchip@lists.infradead.org; Sun, 24 May 2020 17:33:10 +0000
Received: by mail-pg1-x542.google.com with SMTP id f21so4703070pgg.12
 for <linux-rockchip@lists.infradead.org>; Sun, 24 May 2020 10:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ne/8/a9OXvwh91Zw6UxFhdu2CXcMc/kGaJGpUeeEHPo=;
 b=TK/jvCjSMC5qVzlkPVJdOLMJQRQCPXdTC3q2D9nGmkW88vxbsybgtScdL6ZNSjY1HG
 unGM/DJuptETf2Y65jXycGyr8izm/Wqm3sbAr1OlRYS+X4FtBlrsnCKA7AAWX9qj/e7Z
 uCv15JrTu+dUetJ0qvlpQ0N/30vnDCrCuA5GU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ne/8/a9OXvwh91Zw6UxFhdu2CXcMc/kGaJGpUeeEHPo=;
 b=QT2CKz235eZa5e73/NVSW51fYcsFjcgaaUeSOERZeP/1OO3eB18LNxgoDzrNzGRG0l
 1EOLmmfDN6hktedff/+i7PLsthlgho2RuwMfOGmo/PzSObglrrhvnail0bKp/puuqPq0
 W6Yxh4km74XV7escdTyKoV3ryoevomN+IWcpTBdVtkHIRW8v46m26ERmagYF4MXVaHIa
 IfSFoVi/tSUKFg9Vtd0ddAmsjbibc9gBY/1IAdGFvI1zrxtFgLosOQ94CfW1HKqibRYd
 GXe3clI1WSfxZDt5wABhU9HITXs1n3WYGmJk4UWgYi8ieQcQsQxsQqS3zrKaOF8/rJSp
 D/+Q==
X-Gm-Message-State: AOAM532VJqi7cj3XuWKGEVICDEhJxeOTD2S7alvmrCVnVRz3DALS+aLS
 cze8mosNe1TYU38Gd7M0VZcjew==
X-Google-Smtp-Source: ABdhPJyPGDUNMuycugY1/gX2AGd22oNYvmQfpRYLkfKUDhhMyFNAIBWPNx8uE8R/+AgIQku0aBJ0Ww==
X-Received: by 2002:aa7:9466:: with SMTP id t6mr13857242pfq.299.1590341588529; 
 Sun, 24 May 2020 10:33:08 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9b1:856c:6c2b:bde7])
 by smtp.gmail.com with ESMTPSA id
 y85sm10617271pfc.24.2020.05.24.10.32.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 10:33:07 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 2/3] nanopc-t4: Enable USB Gadget
Date: Sun, 24 May 2020 23:02:12 +0530
Message-Id: <20200524173213.201123-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200524173213.201123-1-jagan@amarulasolutions.com>
References: <20200524173213.201123-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_103309_289991_F061E1D6 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable DWC3 core, gadget for nanopc-t4 board.

This would help to use fastboot by default.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/nanopc-t4-rk3399_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk3399_defconfig
index 3bb5b498f2..40fb797c49 100644
--- a/configs/nanopc-t4-rk3399_defconfig
+++ b/configs/nanopc-t4-rk3399_defconfig
@@ -50,7 +50,10 @@ CONFIG_USB_XHCI_HCD=y
 CONFIG_USB_XHCI_DWC3=y
 CONFIG_USB_EHCI_HCD=y
 CONFIG_USB_EHCI_GENERIC=y
+CONFIG_USB_DWC3=y
+CONFIG_ROCKCHIP_USB2_PHY=y
 CONFIG_USB_KEYBOARD=y
+CONFIG_USB_GADGET=y
 CONFIG_USB_HOST_ETHER=y
 CONFIG_USB_ETHER_ASIX=y
 CONFIG_USB_ETHER_ASIX88179=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
