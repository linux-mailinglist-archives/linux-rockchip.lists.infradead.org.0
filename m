Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B1B786A5
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Jul 2019 09:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUu8T/MR3uRxWWJBhxdWkqvCSForByR1nZ3GyTBZb9M=; b=Tk615paiFDGl5v
	IO04kUn36a5u09Tk0LqCqyXVATJHc3K8rylLK5EE9Dt0toGjsE9hmOxQ1xVYppoJHIZ2/hMeGanjT
	GySne6PsnGHz+BzBRK8GaR1LTb16aU6blcYPEvUVsMVFzk1W9j9MDu5oywLgDA1uTw1170/5j9Smp
	XkWFYh7FANGufDrtZkFUChhHpRDBxr2r05v3UAi9a5ibtyl6YLYAt+o3STJ7UANcuajZFw5a4xnUG
	SVCCPwbrPiovwpMunlpdmuLrxcPWCljtiCITIwo4oNWfl+A1edOWSBo89sUMGY20hXD5uybtX6rP9
	JuHvtNCtorEGY8xm+4sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0OQ-0003Ge-1n; Mon, 29 Jul 2019 07:48:26 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0OL-0003DJ-N2
 for linux-rockchip@lists.infradead.org; Mon, 29 Jul 2019 07:48:23 +0000
Received: by mail-pg1-x541.google.com with SMTP id t132so27798997pgb.9
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2019 00:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=f1CWAkaGxV+TJoP0QvAY8A3uWWMaAVYWVc4J6D/J154=;
 b=GhGoqUktGYlVuBCkKNoAkRaO0p2jQD+H9tJzm/TVT4nKOt3msrjRJeoBgF+GFjEPzq
 L3RCPdFhKPDq4iW7aEyotO2aZZ9UtVlyqb1/uhwFl7mDynda+Svvy9TG3q0dlo3EM88q
 Vekd+U24m1G7KnEVbX/ifrkxeBWwsUcr3QRS4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=f1CWAkaGxV+TJoP0QvAY8A3uWWMaAVYWVc4J6D/J154=;
 b=CCZKN9h0vKxJVLKRD3T/LrZgWTCIoKYNuF7m/5ZfNWNx4VOv9w085WE7oOdHT1G8ex
 MAwqZ1qy9QN1Aofqke8qrpH+8xe7ME508f16H3Y2fsVqQ/kXI0i30+vd9WPmhsuGGO+j
 lbAm3Dh009hBZQW6esYPGWG2MEqPAfX+xTIuWq1INXaUNNv6S7x4dKtlvM3Fk9KiNmsB
 kYkg5EjPeuQe++Mw40PnTvXAZAsX31FyJ8tL/VMYEMbfNvrzMAhYcwhLoieBYOoBKb0u
 OV2J7+lbhtS+0QY2OfTwVQIaJYXB2We0OK8Xu9wpeBStRvpOjzaVbuJIjghZPs0y+4gx
 DltA==
X-Gm-Message-State: APjAAAVo8k7y8nDwplvVyGGitK+qPLvTIvYdM5PK4KoYCYXXD27VpDOz
 I3Y39q1nj8pPHHDGxXbykjmo3Q==
X-Google-Smtp-Source: APXvYqyz4yrERS12TgcL68+nCZoAumWr7OnxoB0wbGlTJW/dhnDHcEIaFC2o1qDWRvnd4b6Hn2K0rQ==
X-Received: by 2002:a63:e54:: with SMTP id 20mr100694932pgo.244.1564386501085; 
 Mon, 29 Jul 2019 00:48:21 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.41])
 by smtp.gmail.com with ESMTPSA id h14sm75723348pfq.22.2019.07.29.00.48.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 29 Jul 2019 00:48:20 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [DO NOT MERGE] [PATCH 15/15] rk3399: rockpro64: Enable bootcount
Date: Mon, 29 Jul 2019 13:17:11 +0530
Message-Id: <20190729074711.16988-16-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190729074711.16988-1-jagan@amarulasolutions.com>
References: <20190729074711.16988-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_004822_002739_504E8B87 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable bootcount support for Rockpro64 boards, this
would help to use it for redundent boot.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/rockpro64-rk3399_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/configs/rockpro64-rk3399_defconfig b/configs/rockpro64-rk3399_defconfig
index f604ccc1ec..3f1cf21ca0 100644
--- a/configs/rockpro64-rk3399_defconfig
+++ b/configs/rockpro64-rk3399_defconfig
@@ -57,3 +57,4 @@ CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
 CONFIG_WDT=y
 CONFIG_SPL_WATCHDOG_SUPPORT=y
+CONFIG_BOOTCOUNT_LIMIT=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
