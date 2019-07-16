Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 633F06A7FA
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:01:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxCl44psIpcI1NvQTMkugztrQ6x58YGuf95uGtdg95g=; b=Ll3wmIRisBdcih
	V1n1xfSVJviBw1yhw2c85M6LghhUG2c+cJ93Xbcw6Phg8SfmKJkDBRWLKP39J1uGBMnddNulHphPL
	ROZeq/GEri7QRuIkvxtMhHoBINgDNslxxZBNqWmS8eBZkeqo19uhkD9n2vQi498o18FnUsmBP7yFu
	BrikBrk+XPkNjkLjekAmivWltbxwrx2utPPD0Skzs06c6DFoh3/cnPeGvIV0aBW1cNqSqVS6Oyk4F
	Lqct0jl71EjHWoatmjKrG2RCnvj7ZzdNTs95uTXGJ3yl7P60xwkARTSWcMhVSnsYDBki38tq6wTK2
	mpYgBZKSTB1XofCYB0+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnM95-0007Q9-Sl; Tue, 16 Jul 2019 12:01:23 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM6u-0004QV-E4
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 11:59:10 +0000
Received: by mail-pl1-x642.google.com with SMTP id az7so9996738plb.5
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 04:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LGQ9bzA9T07Z4PCboB8dYXm0DbVJVBbSF3/XKR5AacI=;
 b=k94BfO4aB5u48sOTTGrtbDBtoJARtOIbwX0oONiQcA9666j9/k6fS1wHEb6O5ayrLB
 VB2ygVwJBeM5EYk848P5sg8qLC9CCoRS0jxrFggLSRIiCTPCnPSRseQ5QLjcN3lTwAgX
 W1H7MdiXSd+8Upplf6kSHyOUdKXyKMFGF9HXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LGQ9bzA9T07Z4PCboB8dYXm0DbVJVBbSF3/XKR5AacI=;
 b=R23P9JX45qL+JQrHIqGfMDV8/vwuBlrrkqoXV5VR54oeuvsh/HabmiNs/xo3k7OoKw
 rxne2zMJHlTkY7ZA95zY1vihh0qpdnOulrXq9RlKdK68LW3jwuytzvZ2WtsC50PKOdMX
 9Ma1abjS8R1y9xikpCRf8MWBxW0zSuHiv5AzSSd5sNynsxsXVdSxd+G4Fp7W5QdHDHFK
 8rXbYpR1G6GqokVL3uQ305+2jo256MI+Q04acYNWQJ77QYhDPGP6+Muxe+jeSROY4q0Q
 bM4a7hXX1oTbeP0d1lCYXLCfZhkNC/+5I7X4dQaHxHC/+TrkXD4i8mtXr6rByF7cD+/6
 Iyjg==
X-Gm-Message-State: APjAAAXTuCDm/a4vU62FSG2BKUN5obuo0v0R6kzfmN0oFrPTu+hsqMaC
 s06COKBNug/RykGZvhzG5L7LsA==
X-Google-Smtp-Source: APXvYqx8bx/JD3g+gbJCnCAaEiDqtJOVbmuRq4slGfPQYEKSu5CUdmzLgjfZWdCiTkGj1XqK/THynw==
X-Received: by 2002:a17:902:b109:: with SMTP id
 q9mr24809641plr.176.1563278347493; 
 Tue, 16 Jul 2019 04:59:07 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.04.59.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 04:59:07 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 20/57] ram: rockchip: Kconfig: Add RK3399 LPDDR4 entry
Date: Tue, 16 Jul 2019 17:27:08 +0530
Message-Id: <20190716115745.12585-21-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_045908_506033_6E82076D 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Supporting LPDDR4 code support in RK3399 would increases
the size of SPL/TPL.

So add kconfig entry for RK3399 LPDDR4 code so-that
the boards have LPDDR4 can enable them via defconfig.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/Kconfig | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/ram/rockchip/Kconfig b/drivers/ram/rockchip/Kconfig
index 151ffb684d..4f274e01b3 100644
--- a/drivers/ram/rockchip/Kconfig
+++ b/drivers/ram/rockchip/Kconfig
@@ -23,4 +23,11 @@ config RAM_RK3399
 	  This enables ram drivers support for the platforms based on
 	  Rockchip RK3399 SoC.
 
+config RAM_RK3399_LPDDR4
+	bool "LPDDR4 support for Rockchip RK3399"
+	depends on RAM_RK3399
+	help
+	  This enables LPDDR4 sdram code support for the platforms based
+	  on Rockchip RK3399 SoC.
+
 endif # RAM_ROCKCHIP
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
