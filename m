Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5D31C6A67
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 May 2020 09:51:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HGK07df7fsCMtheUnjUbEPtUfkh3fxFsCQYUB+dxLUQ=; b=ltv9ah0SLMZWOOm/vdBxkr/R7R
	dxVgOh9qplZvOhaWAqZtsy0UKePt1kzSPivaOQVJ+b1teQCNMqvTLWKYmlTBalz2qMvxRrtFplAMP
	2swcMhv/6o1a3KtkM4SFPNDItdl1ryzJDZYX+XO3fzq6x6ASJXbrfPDW6RO7ezpVirBgdf5n+kl0H
	RXG+TPtWZK4iyDZKX2DzeaN3xBGmFDpsFZFiyN/ORDhajqTe3MYlRTE5ujMJ0e8Qxu3IkKav7Vqkp
	FICBLUQ6cQ6iaMiV3APhkS/Z/EKtyaogcUbyoqvOqtOKkjtg0icjPYwo2smrcPA9+IFlRz4mc8hSK
	4wFhiiSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWEpY-0006j5-Ff; Wed, 06 May 2020 07:51:00 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEpV-0006gp-6x
 for linux-rockchip@lists.infradead.org; Wed, 06 May 2020 07:50:58 +0000
Received: by mail-pl1-x643.google.com with SMTP id t7so167962plr.0
 for <linux-rockchip@lists.infradead.org>; Wed, 06 May 2020 00:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qKV2YO5gxF+l5Yc20ohGDgaddB7qj/Cn7Rz0GuUAAOk=;
 b=Ue2tPDCTC3/Bfjk+P52D3V1zs53Q93uJF0tFMickMklz25IZNkXO+ygmwh18OtVjLE
 hFtWe0x+R9xFjC9KtMGXC9KeWz7FOAqXUFVGT64OF59ZyPgd/CWwFGpdPuBkqHTo8lw5
 fb4RNZ01a20SGg1cA+v3h2UKfJiph19rjsnrE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qKV2YO5gxF+l5Yc20ohGDgaddB7qj/Cn7Rz0GuUAAOk=;
 b=WTLSMDQ73rEgyBabGolrfF/FGyzgZoNGdAzhlEIwOV3/vSIf9wuo8HEU4dpS7iGSPq
 Lvbzv7/VuysFImBtdcaR+lpf4xPuPtpNwMrfKvC+FSkPZtPqMmmqnHu2jdfejjy5ZTMT
 Z3+ryU6yfDlX6kS/AzPy9uooEHPZ42LEIsrjFoOWE4vdj55H6Bxziui77l1vbCkdWrSh
 RyQJey0fwSe0usHHU272RxFAH2vbZ/zP015L4Rdxi11UVpGFhst66rJTlTa/aWZRfCwf
 4SdHTHUId8/dpWh/pfxqUr46/puL4Y+oXKHouBwTfRUDCtAn6S9iAhchGhV5pK4o5EKK
 yoVg==
X-Gm-Message-State: AGi0PubPvBgidUA4CoOdd2KyozBOb95qnLZ+5Xc3ZI+NFOQODxlyehjW
 ybOiTimx+JkJ72E5esULQwYk4sa0jaTJ+Q==
X-Google-Smtp-Source: APiQypL2kGUB5b8O3i7alEArXs0bKDnegdNXu7kQX3ek3mLK39JYqvpU5PXkr9zdPC1tvecJJbnZ3A==
X-Received: by 2002:a17:90a:e00c:: with SMTP id
 u12mr7486915pjy.167.1588751456586; 
 Wed, 06 May 2020 00:50:56 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:c598:8eeb:af7:7f36])
 by smtp.gmail.com with ESMTPSA id
 y186sm1011133pfy.66.2020.05.06.00.50.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 00:50:55 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 Simon Glass <sjg@chromium.org>, Frank Wang <frank.wang@rock-chips.com>,
 wmc@rock-chips.com, chenjh@rock-chips.com, heiko@sntech.de
Subject: [PATCH v2 3/7] clk: rk3399: Enable/Disable TCPHY clocks
Date: Wed,  6 May 2020 13:20:21 +0530
Message-Id: <20200506075025.1677-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506075025.1677-1-jagan@amarulasolutions.com>
References: <20200506075025.1677-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_005057_260526_D3BB9E8D 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

Enable/Disable TCPHY clock for rk3399 platform.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- new patch

 drivers/clk/rockchip/clk_rk3399.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index 4d48f70685..2cd3fd3e68 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -1144,6 +1144,18 @@ static int rk3399_clk_enable(struct clk *clk)
 	case HCLK_HOST1_ARB:
 		rk_clrreg(&priv->cru->clksel_con[20], BIT(8));
 		break;
+	case SCLK_UPHY0_TCPDPHY_REF:
+		rk_clrreg(&priv->cru->clkgate_con[13], BIT(4));
+		break;
+	case SCLK_UPHY0_TCPDCORE:
+		rk_clrreg(&priv->cru->clkgate_con[13], BIT(5));
+		break;
+	case SCLK_UPHY1_TCPDPHY_REF:
+		rk_clrreg(&priv->cru->clkgate_con[13], BIT(6));
+		break;
+	case SCLK_UPHY1_TCPDCORE:
+		rk_clrreg(&priv->cru->clkgate_con[13], BIT(7));
+		break;
 	case SCLK_PCIEPHY_REF:
 		rk_clrreg(&priv->cru->clksel_con[18], BIT(10));
 		break;
@@ -1226,6 +1238,18 @@ static int rk3399_clk_disable(struct clk *clk)
 	case HCLK_HOST1_ARB:
 		rk_setreg(&priv->cru->clksel_con[20], BIT(8));
 		break;
+	case SCLK_UPHY0_TCPDPHY_REF:
+		rk_clrreg(&priv->cru->clkgate_con[13], BIT(4));
+		break;
+	case SCLK_UPHY0_TCPDCORE:
+		rk_setreg(&priv->cru->clkgate_con[13], BIT(5));
+		break;
+	case SCLK_UPHY1_TCPDPHY_REF:
+		rk_clrreg(&priv->cru->clkgate_con[13], BIT(6));
+		break;
+	case SCLK_UPHY1_TCPDCORE:
+		rk_setreg(&priv->cru->clkgate_con[13], BIT(7));
+		break;
 	case SCLK_PCIEPHY_REF:
 		rk_clrreg(&priv->cru->clksel_con[18], BIT(10));
 		break;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
