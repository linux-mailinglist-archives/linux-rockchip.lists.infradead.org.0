Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A12C61C6A65
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 May 2020 09:50:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZpPq8C/UDu2zrs5vJBktX+Ncyx6p8EJPuLkrgvizqTU=; b=BLeUkMRpUUXg+8WTeuP00ucHy0
	9QFGthp3IDgdCbp4S4i17zPirJEwEZ8ZvcxTRMBalPTHbuitZ+Au+1/n6HGru8Y3JhiH1qwBqwDCW
	LjwOLXvMkYrY/yaFmaZIhWndAUK28hCtNMOw/eCfO7brvHu7wy7LRMMyso+eTp9zNJc32KEmUrAGv
	13ETby8WEWhA+4LnUeN7dHSQiIKHaHNxrHJc/tyA/Pig4gt4+r0MD59GTiyBNICQKQesM+zkYkmdP
	YuOxCivAFVIqZykGyzLqZPYU7DHs85T5t+smoPTzjU8UX0mtzX6ox1yQvKllVSgqZYJIoSKervLs5
	tKmahfDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWEpQ-0006bW-4M; Wed, 06 May 2020 07:50:52 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEpM-0006aB-MX
 for linux-rockchip@lists.infradead.org; Wed, 06 May 2020 07:50:49 +0000
Received: by mail-pg1-x543.google.com with SMTP id f6so601359pgm.1
 for <linux-rockchip@lists.infradead.org>; Wed, 06 May 2020 00:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7EuBhc+IxUhTFTnantvXwnfMzqtQXGOpAjLsf0kZ7fc=;
 b=bV0PnJL1G8csjYzCGFCrgEpmhGST65vZdsFzpTM8nVvUfSYjdoPtnWgRvGjNMWzIKv
 GC+2Ry/wUA9AQ1Yyt8twHSHSPp2gZ8axIOlHkXDf5PqTdqQfSsZXocqdT+SZ+bACKfHt
 t0osOUUtGLuTzgN+uGKxCjCiLXRFi3dGc23mE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7EuBhc+IxUhTFTnantvXwnfMzqtQXGOpAjLsf0kZ7fc=;
 b=Up4YiaL3zkeTvSkjbb57gTDM4QP1nMneW5CXqr4Bj6Rlfha7AJYm9P96i4yR3tuZXI
 TeVAQ41C1WbABjWw91alcWwtu6qkmX1SwQz7BDmXu9xEFzFW8OllPWZYu8NyXg5dsaer
 MGkCGQ4m6Lv9cEp7hcekipMeYZq77fsgjl6a/7QQ3CbkUgl5FHJNNNXaaxbcjcmzH2xs
 EH9ktjJuMJGusUYZybpskxgspvsw4cXdgPay98O2hsMW56cVWq7Hv42ANwmH9bKgiCBZ
 8dvITX1mMO3msScHaaeMxRwlCurBI9j0Oti1y3DtyQbvr/Ye4V8CL8gvIHUW0Y4uNRXk
 NTag==
X-Gm-Message-State: AGi0PuaCx+ME2Y1ct1v0ZD57T3/XcXZ972fTx3iMWr2L8w23EoVB7iO4
 EWiaH5oW99T2bgqRT3tJJhv0vw==
X-Google-Smtp-Source: APiQypJJ+QZ28a4XmQOZmnd0M7ona8NscN/ImWcMtdUkhPYQxKwzO0iT0nQYvGU+LsdaaQEK1AxvJA==
X-Received: by 2002:a62:6485:: with SMTP id y127mr6613854pfb.11.1588751448068; 
 Wed, 06 May 2020 00:50:48 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:c598:8eeb:af7:7f36])
 by smtp.gmail.com with ESMTPSA id
 y186sm1011133pfy.66.2020.05.06.00.50.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 00:50:47 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 Simon Glass <sjg@chromium.org>, Frank Wang <frank.wang@rock-chips.com>,
 wmc@rock-chips.com, chenjh@rock-chips.com, heiko@sntech.de
Subject: [PATCH v2 1/7] clk: rk3399: Enable/Disable the USB2PHY clk
Date: Wed,  6 May 2020 13:20:19 +0530
Message-Id: <20200506075025.1677-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506075025.1677-1-jagan@amarulasolutions.com>
References: <20200506075025.1677-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_005048_733095_1DFC81DE 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de,
 Belisko Marek <marek.belisko@gmail.com>, linux-amarula@amarulasolutions.com,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable/Disable the USB2PHY clk for rk3399.

CLK is clear in enable and set in disable functionality.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- none

 drivers/clk/rockchip/clk_rk3399.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index 7feba92f9e..b1c89ea127 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -1091,6 +1091,12 @@ static int rk3399_clk_enable(struct clk *clk)
 	case SCLK_MACREF_OUT:
 		rk_clrreg(&priv->cru->clkgate_con[5], BIT(6));
 		break;
+	case SCLK_USB2PHY0_REF:
+		rk_clrreg(&priv->cru->clkgate_con[6], BIT(5));
+		break;
+	case SCLK_USB2PHY1_REF:
+		rk_clrreg(&priv->cru->clkgate_con[6], BIT(6));
+		break;
 	case ACLK_GMAC:
 		rk_clrreg(&priv->cru->clkgate_con[32], BIT(0));
 		break;
@@ -1167,6 +1173,12 @@ static int rk3399_clk_disable(struct clk *clk)
 	case SCLK_MACREF_OUT:
 		rk_setreg(&priv->cru->clkgate_con[5], BIT(6));
 		break;
+	case SCLK_USB2PHY0_REF:
+		rk_setreg(&priv->cru->clkgate_con[6], BIT(5));
+		break;
+	case SCLK_USB2PHY1_REF:
+		rk_setreg(&priv->cru->clkgate_con[6], BIT(6));
+		break;
 	case ACLK_GMAC:
 		rk_setreg(&priv->cru->clkgate_con[32], BIT(0));
 		break;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
