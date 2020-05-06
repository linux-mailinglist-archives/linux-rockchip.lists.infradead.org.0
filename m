Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA021C6A66
	for <lists+linux-rockchip@lfdr.de>; Wed,  6 May 2020 09:50:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A2YgN/R/p7IdSs3gBcqD23fEayH0fKMkn4uZb9z4GSM=; b=nHudvdXEj9a0FNOmJBxKt3kH0N
	JiypsRuhKnhbcRfKrVCH+2aCMq6PLbEURZcZJdC8wMhOtKuUW0PpLiCvkFJAS5m/hN1eElvcYpOJR
	H8eBN/xEIe9iBV2rB1Vy/2ZlmhtcIuZ7AMQ7IBeBPGOa1TMN90lteNeOGW/56X+Z70sopYVcog9AX
	SM5pIZ3DGmxxtWbGJv3jB4mnpwmDxlMIMs3yfGIbSlaxyBbVS0tZvg9e+1oifD+yIsbf8IR5FPBbN
	yfP03DDrZraUthjfBVFxitcznC8MtCxD3NTOZI0NKguvIA4WkWZcYygt0dEIJ43Tm6kwNO/uCsmz9
	EXdaulTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWEpU-0006ej-75; Wed, 06 May 2020 07:50:56 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEpR-0006d5-7S
 for linux-rockchip@lists.infradead.org; Wed, 06 May 2020 07:50:54 +0000
Received: by mail-pf1-x443.google.com with SMTP id z1so598887pfn.3
 for <linux-rockchip@lists.infradead.org>; Wed, 06 May 2020 00:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=paY+YkRuYb6W0hB7a23R4UOoM/sR3R+9HnDYwp25OD4=;
 b=FrA/H7Y9LUWdKickqkxYDsfHS0Ei0WjTq9qXXGslkpI+qm+gtvhYPVaXlBZeEFlSrI
 MP3e5hlnbBe+ikqWW3IQRkOVJrNR4/0fVar/XGWbkTNLmc0+1nUgzksfbJhlnHJ31BEQ
 TMA9zg6TtDVPLGirQULCP+X4ZUmfFl9NuNgns=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=paY+YkRuYb6W0hB7a23R4UOoM/sR3R+9HnDYwp25OD4=;
 b=m9jqwbvy2qAZ0BrSHvjX0DyGYx9EWUybPu1YboOVcRBXRo9dwR5shQapwGEuOeG6BQ
 hU8YY6nRkTDrrBhsl/m7AvIap2Kaayy3vSB57zQ2xPgBhdoTtSHN9/hoB2AYID6KJx4G
 hKn5nDH9FsAuIvz8IUxdwYc20opky3GPD4AbunmkXyRlE4F+6IvLuqj8lvwmYxXxPm7q
 7zwPqes8SwkyE9DQ5XMdrGp76HRf1fe1+AI7qITNv8x0aQEeHDccr+jqqObGrMkCLIDq
 Fr9SR6PHcFKaVJ8/kNzn8znVPjUMsNzYunMJoTP+y5xH5EqOKV9HB31YZ6wEfKtOAa8I
 llnQ==
X-Gm-Message-State: AGi0PubeAkxYJD9WHsAG3Bep1rtQPBfFcmNuuawNbx0c2nSCtjuE90G0
 ggj2VtzgutmFwQCOhdf7HG7A5Q==
X-Google-Smtp-Source: APiQypK7f76Y2X8jqP5UoWNayu9ZZGgSREtJzHFJ+oMDmr92VS21hadD2fk185NgkTywoyFXv6gxCw==
X-Received: by 2002:a63:6e8a:: with SMTP id j132mr5261850pgc.301.1588751452324; 
 Wed, 06 May 2020 00:50:52 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:c598:8eeb:af7:7f36])
 by smtp.gmail.com with ESMTPSA id
 y186sm1011133pfy.66.2020.05.06.00.50.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 00:50:51 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: kever.yang@rock-chips.com, philipp.tomsich@theobroma-systems.com,
 Simon Glass <sjg@chromium.org>, Frank Wang <frank.wang@rock-chips.com>,
 wmc@rock-chips.com, chenjh@rock-chips.com, heiko@sntech.de
Subject: [PATCH v2 2/7] clk: rk3399: Set empty for TCPHY assigned-clocks
Date: Wed,  6 May 2020 13:20:20 +0530
Message-Id: <20200506075025.1677-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200506075025.1677-1-jagan@amarulasolutions.com>
References: <20200506075025.1677-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_005053_269056_C1621C9F 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Due to v5.7-rc1 sync the SD controller nodes in rk3399.dtsi
have SCLK_UPHY0_TCPDCORE, SCLK_UPHY1_TCPDCORE assigned-clocks
which are usually required for Linux and don't require to
handle them in U-Boot.

  assigned-clocks = <&cru SCLK_UPHY0_TCPDCORE>;
  assigned-clocks = <&cru SCLK_UPHY1_TCPDCORE>;

So, mark them as empty in clock otherwise device probe on
those typec phy driver would fail.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- new patch

 drivers/clk/rockchip/clk_rk3399.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index b1c89ea127..4d48f70685 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -997,6 +997,8 @@ static ulong rk3399_clk_set_rate(struct clk *clk, ulong rate)
 	case ACLK_VOP1:
 	case HCLK_VOP1:
 	case HCLK_SD:
+	case SCLK_UPHY0_TCPDCORE:
+	case SCLK_UPHY1_TCPDCORE:
 		/**
 		 * assigned-clocks handling won't require for vopl, so
 		 * return 0 to satisfy clk_set_defaults during device probe.
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
