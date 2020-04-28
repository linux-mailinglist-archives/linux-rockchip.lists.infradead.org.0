Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E53D41BBA80
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Apr 2020 12:00:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7UTbrYyUhziHsW92JUy8TiXiPUN4h3+mbbvsIU4ismo=; b=PUAzu4VOm7iHC+CJXptzKp5mia
	YQO5+s8/arBPwLmD47fzrB5d8tbPI4ryymrU3aXvbqQ1rcCbHivORyzGol5MaBWCdccjtuBdNwX4s
	xkAvwl59GaBV9PeIw1eTBS5I8ax8j/HfeKJRuk0zp82coW1VRXtBU6KT8wEmAnjCQyjQqbwSdiZ5Z
	WBgmN20ATgR4x638FZXSNVp4oaR9UgUO9/PAPrh+KriM886feCLaN0ahy2/3BjybdoBfFjpgEpMyP
	ScnY/lrdrnr92NozGxQJ1A8ERFLip47c2L6jkFM61NY0msKGlEPCnJ00a4bf9ZrdZJM/BWDJc6js1
	MCQQpa6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTN2k-0006J9-8p; Tue, 28 Apr 2020 10:00:46 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTN2g-0006Gk-MV
 for linux-rockchip@lists.infradead.org; Tue, 28 Apr 2020 10:00:43 +0000
Received: by mail-pg1-x542.google.com with SMTP id t11so10091307pgg.2
 for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2020 03:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KR2whTHceCQ+mLrFReJk4bmkutHvPrzu2O46gqDbnB0=;
 b=bcvi1ZH9ARfnZ9l1BPDLgCTUAv3L9HlXlS0AKomZOTZ0XG1gv2p4VbvS4/TCUUx1xH
 Avzm0sm93tyYEHmiRm7DgdnbdfG5OjEbqNhtasBFvQGwGnFuYUVH9irN9bqtyqzeQb9a
 dSoXh/2WDMaUrryZF89DtgAm33vh96goXjy2M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KR2whTHceCQ+mLrFReJk4bmkutHvPrzu2O46gqDbnB0=;
 b=jcuubIIf4NaCYrFPOWsCudML780Wz+KVN3BOXo93CBkqPGkunu8ir2gQvhUdNAxfUU
 x8crycZ0kmN1LtSmB722/54o3PqtDi+bvte65n/9Jcl2EvXb2DHLmbiEFzyhX05CfQu2
 9IAQdqzRqfmDRDPuDYO0YhEkP+nc9PEU4YHoTTgnGHKnzVxYIWQ9wULIOG9OFrFqlWpT
 84f0gBMyBUk2egcHZTO9IuRSPEJgv0e58sIvUEwSPAGRr9p/j16iMeotr5L45gFlZSn4
 vECsjuURIj6XsUWcQw7qdmgUbK82m6CfCLmfhrRCrRZdsZR2MiDfU+OXkULc7nqHEQr2
 ZNJg==
X-Gm-Message-State: AGi0PubyLdd6dOyi7MhWCwLhJfrPdeKWck31vkhKAW+2j5j50kmnpge5
 9agVaUB8IDcxRfUUpmnrzg5hMQ==
X-Google-Smtp-Source: APiQypLwVyalbBVUYoHRHxE6sQsrvuv2gnSjuMkj61y/KfRDm+UdPG9SO5CLmQIS4iF44b0erRe3NA==
X-Received: by 2002:a63:741a:: with SMTP id p26mr28759114pgc.40.1588068041709; 
 Tue, 28 Apr 2020 03:00:41 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:f9c1:1c6a:49dc:267d])
 by smtp.gmail.com with ESMTPSA id j32sm12676379pgb.55.2020.04.28.03.00.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 03:00:40 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 3/6] clk: rk3399: Set empty for HCLK_SD assigned-clocks
Date: Tue, 28 Apr 2020 15:30:16 +0530
Message-Id: <20200428100019.19155-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200428100019.19155-1-jagan@amarulasolutions.com>
References: <20200428100019.19155-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_030042_765504_04567AD2 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Due to v5.7-rc1 sync the SD controller nodes in rk3399.dtsi
have HCLK_SD assigned-clocks which are usually required for
Linux and don't require to handle them in U-Boot.

 assigned-clocks = <&cru HCLK_SD>;

So, mark them as empty in clock otherwise device probe on
those SD controllers would fail.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

 drivers/clk/rockchip/clk_rk3399.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index 1f62376595..d822acace1 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -996,6 +996,7 @@ static ulong rk3399_clk_set_rate(struct clk *clk, ulong rate)
 		break;
 	case ACLK_VOP1:
 	case HCLK_VOP1:
+	case HCLK_SD:
 		/**
 		 * assigned-clocks handling won't require for vopl, so
 		 * return 0 to satisfy clk_set_defaults during device probe.
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
