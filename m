Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBBBB341
	for <lists+linux-rockchip@lfdr.de>; Sat, 27 Apr 2019 13:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kthQ8bWDjra4ON6HTk4/FzmyCMxHd/VSjrFo/lfDWOA=; b=Vi2ROjaOvtJr5/
	CkWLAt56x0NINtq2D0WogdH5+g/ZODrdfzA660n3cSp46GWaizrjpQFjQ07nG5e8iFVL12qOe2xNl
	A/sIAbiHirgHGlO4T2nkoYoSzCQbF4P0dW3LQVi83HgNFiiFG16ELzPPNfsBtyntPCs3dBCmeB4M2
	bQ3mABzjBO38xzohEvyvJWJgo1WXE0RBMBs2lhva1/z4bOvsQ7RFRwPKO0FaIGI+xrZyozORW6Ogk
	ra4PjGKDetRggocJvMwfOLgB4cSSGYyIIN5j94qf0Lpsqf36cveYff5bWfUru/UZVqWnG5/pXAK5M
	sUs9gT8BkCEyih6DJidg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKLpX-00011M-2L; Sat, 27 Apr 2019 11:49:19 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKLpT-00010F-Ui
 for linux-rockchip@lists.infradead.org; Sat, 27 Apr 2019 11:49:17 +0000
Received: by mail-pg1-x542.google.com with SMTP id j26so2872874pgl.5
 for <linux-rockchip@lists.infradead.org>; Sat, 27 Apr 2019 04:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZAbutBDKzKAmiGZFBhi5+rF3YZAfREq6DX6BxocjFlw=;
 b=XvqtDD7AWJttlnUDaUYFkLt6p1w1s7ndHn0+xgyIRhiyD4T/Eyf4whyNFmvaW5p4ug
 BBgMhabjo0Vx3br0jxYZjzxP+xP+oPU9TeVZeYuLj+iFvSnJDzKa3kBIBFECrh9/txIG
 4T1vdDn/igMPaPzog+LMEBIRU9KPWyawMDxzg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZAbutBDKzKAmiGZFBhi5+rF3YZAfREq6DX6BxocjFlw=;
 b=MBJLNQEIxzqhYmER+XF4mGmY0UrPTsqtm2i1fYarhipuwNGfxTsRwnLQ29gfThz2go
 JvE+d/7ZkzDfsBhWABxQAg7fjmMcrYx2RzHu9B00JH4hkH7i+NQA1RNcTy1BMYJXXHdf
 zal/yR12eSQXzcVmYdH4y1+DfpCei4GeTXpf9QajSvmaUFYNhvxV2fO9JgaypU7KZACc
 EFOLdg0EISSGAW+ii6MB0f7/6TTRLn56rHI0aRgJ7ofzeZ//6oRedhe7kavdBZBZKqL1
 Dc8prYJ2KA+UaykL1FxvPEr7NVirC1DYVb4kooAPXaZtz/1pm2CKQFFOGjmPyPcJGK3z
 yiLw==
X-Gm-Message-State: APjAAAVDpxaN2Rn5L89Pr9WsTLtYBdYBosx4WaiKcFfQo/02sXlifZ91
 Z1YbqbQj5derWS0wF+0NPvMiuw==
X-Google-Smtp-Source: APXvYqwdjhHGExJzT3aCy7JY0NVziLW3j6gdDnoonZ2rMrW4DR/rPHpmMueCih4TVLz7bDW9nJS+gQ==
X-Received: by 2002:aa7:9285:: with SMTP id j5mr23856466pfa.129.1556365755153; 
 Sat, 27 Apr 2019 04:49:15 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id y3sm2368768pfe.9.2019.04.27.04.49.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 27 Apr 2019 04:49:14 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>,
 Tom Rini <trini@konsulko.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 02/13] rockchip: dts: rk3399: Sync pwm2_pin_pull_down from
 Linux 5.1-rc2
Date: Sat, 27 Apr 2019 17:18:45 +0530
Message-Id: <20190427114852.7608-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190427114852.7608-1-jagan@amarulasolutions.com>
References: <20190427114852.7608-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_044915_991207_DD6B3584 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

To make successful build with dts(i) files syncing from Linux 5.1-rc2
the rk3399.dtsi would require pwm2_pin_pull_down.

So, sync the pwm2_pin_pull_down node from Linux 5.1-rc2.  Since this
node is strictly not part of any commit alone, I have mentioned
Linux 5.1-rc2 tag for future reference of where would this sync
coming from.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 arch/arm/dts/rk3399.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/dts/rk3399.dtsi b/arch/arm/dts/rk3399.dtsi
index b53e41b4dc..99471f6287 100644
--- a/arch/arm/dts/rk3399.dtsi
+++ b/arch/arm/dts/rk3399.dtsi
@@ -2495,6 +2495,12 @@
 				rockchip,pins =
 					<1 RK_PC3 RK_FUNC_1 &pcfg_pull_none>;
 			};
+
+
+			pwm2_pin_pull_down: pwm2-pin-pull-down {
+				rockchip,pins =
+					<1 RK_PC3 RK_FUNC_1 &pcfg_pull_down>;
+			};
 		};
 
 		pwm3a {
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
