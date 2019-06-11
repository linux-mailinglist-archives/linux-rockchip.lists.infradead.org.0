Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7222F3CF78
	for <lists+linux-rockchip@lfdr.de>; Tue, 11 Jun 2019 16:52:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLm97BBQKhbuMHKqL3jzMpuCFjbZQh5ZMpo5Quu67Lo=; b=eNUGvrHAxTIBIj
	uZgrV0HcpSPRyHoCX0DOuAAkYmTUPW+Ca1r2Tzn09fNXquF4oH/sFr1NVYU83qxNlDV5H84F4f85J
	ck9+rYOvLP6RpS64dWsdHl2Ak1org37kYb/flcMTU5p+Kwyx2S9s04MucJiK4x199HJW53pk82/Gu
	Xs8O3YPOf9neNa8zrNNydfM5n/3H/M05UrGhbkYUxymyf6tbgyRmODWJ/6eV63N8GbY5GF9xB7qtw
	iA3ajnfTfqtWECCT0/DDMVQ6Diu4lCEONUuDIKHQ8zXXrkixONLoJnid+HbFR1MO+/7j1LqrkBJyy
	/YLx0GLTZKMsM5tn217g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hai8F-0003uG-Mc; Tue, 11 Jun 2019 14:52:15 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hai8C-0003sD-93
 for linux-rockchip@lists.infradead.org; Tue, 11 Jun 2019 14:52:13 +0000
Received: by mail-pf1-x443.google.com with SMTP id p184so4297679pfp.7
 for <linux-rockchip@lists.infradead.org>; Tue, 11 Jun 2019 07:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=czJWX9GBf8BriQWQcaowm1sDfoEirrjQRVaLL0C5LnQ=;
 b=mcgwa/mdqtchSXl1B+6ZX3+fe3EMvM2YZ+gL6+dTiAdIwjvGhl9kVAAZUjhrwBXdsx
 EsNySobVwgZqoqQKVwub6/wY0gg5MWp6Q7a5kjQ3wmdF9auqGva86+7iyfjarfBvkbm/
 bOkEO1V30VFYXzjYk7kappx7bzxicniZylgWg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=czJWX9GBf8BriQWQcaowm1sDfoEirrjQRVaLL0C5LnQ=;
 b=EOZSv2ARDtaprWKMqe7p9g0SlTW9Z/apwbI8t3EMoYLrnVdcdFQ5xIqSpB06us+47w
 PhvSH9gr1Mghx6GupAcWedlu+FPE4C1mwbxMfHeR68zgXM6HLcLzyvj0++L+KZVBCk1a
 wyXw4XmKl8JmTB5boNZrap28wFFNBmFL/Kt36fpNgBzdPKhic4QEOzBaw97Z0CS/jmff
 i4/tSMNE1N31Ks+Os52sKKNQXxxoWWkStlnqKjlw/MNRpA9suZwyV2ivTCXL8p3YPQHF
 MjygIW6HyX9BEfxKEk+KPMhD3DYJFhNA0gnII7ewSY9OGcFAKHAPatPg/I29zqWnBHC/
 TO8Q==
X-Gm-Message-State: APjAAAVkL2SblXRBheBTF3VeRGKzWsD/tNQlSbq0thhcNS2RbcIVhEOM
 er3cek+YZE1Rqts6ui1ZWUQN9Q==
X-Google-Smtp-Source: APXvYqzXAkS5LE2USRUnluUBISlTYs6sYzMqwRHFmFYuzbMsb3vj3vGpYNM7R9D5m1YSlIUhDFiSpQ==
X-Received: by 2002:a62:e815:: with SMTP id c21mr38790520pfi.244.1560264731482; 
 Tue, 11 Jun 2019 07:52:11 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id e9sm16206208pfn.154.2019.06.11.07.52.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 07:52:10 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH 05/92] ram: rk3399: Order include files
Date: Tue, 11 Jun 2019 20:20:08 +0530
Message-Id: <20190611145135.21399-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190611145135.21399-1-jagan@amarulasolutions.com>
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_075212_356209_6C1D87BB 
X-CRM114-Status: UNSURE (   8.54  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, gajjar04akash@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Order include files in ascending order, which would
avoid conflicting function definitions/prototypes if
any and also for better code readability.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 73732e0767..da04b11922 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -14,11 +14,11 @@
 #include <syscon.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/sdram_common.h>
-#include <asm/arch-rockchip/sdram_rk3399.h>
 #include <asm/arch-rockchip/cru_rk3399.h>
 #include <asm/arch-rockchip/grf_rk3399.h>
 #include <asm/arch-rockchip/hardware.h>
+#include <asm/arch-rockchip/sdram_common.h>
+#include <asm/arch-rockchip/sdram_rk3399.h>
 #include <linux/err.h>
 #include <time.h>
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
