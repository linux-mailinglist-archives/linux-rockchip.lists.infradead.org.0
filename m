Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAB047B40
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:38:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wBYqUAsun5uqE3fkyeQaQ/3xQF5D0d4dT7r0ZHJfzU=; b=Xezp4BoruT5JFT
	b6iCB2Auy/0NcbYXcYpseAwbLC+gTmI0dGNVcELL4PVAm6M0ZG/UIxg8hxck23kwEMMW9HlUpmdUB
	+k1WuAtt4jgXTqzhYWhEcS7zNRlNSwJy6PSZz7mNFhKvxh+OkZq/4DUf/IigrhfcmEuvdXmmV5pqR
	6WULu5YX9bJq0hD0ztak53JtUCr6slkxrlFMNZl+TJ2TgOjEaQ/S71Sz6NZ/RcGw8ILKzylS4evus
	p0b9TObMwnkASf1J7V2d9GmSjeavBApImztlGeqizZ0czCeYdoND16CT41Dg3Dana+tSA3r8EheMv
	5OReBF7wFfQoNjZI18rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmDt-0006x2-L9; Mon, 17 Jun 2019 07:38:37 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmDo-0006oO-6f
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:38:33 +0000
Received: by mail-pg1-x543.google.com with SMTP id v11so5307559pgl.5
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qgL2FaT1eaStfsj3hGDtJf5kpFbPRE60ag+y7zGYXwk=;
 b=lb4r9roFQ6klEMkzg9L3SgJTZbQUAwd/tUUBl+TMqVTasTK0R/oF0zV7UsxLRJ3fSA
 +PcQ1SITOpdQByYACQt8YgFk9sUf1Rhbpkp6lWk0KGEpIokV5TC3o7fxijFjK80knFhu
 6hIY0njPiKx+ROGo0uMxJO60Pv+qbygN3OZYE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qgL2FaT1eaStfsj3hGDtJf5kpFbPRE60ag+y7zGYXwk=;
 b=sYVA3FjHtYHz43H4geb+Dlk5d7Yv9H4JT3/VaIvU/fGbZGQnPbnaKMrtalTixJDeHB
 K1ZhJeq+HYrLeFTmiKt1XiWILhXkM4y6Ni5aINyZN/uJoRtog/q7IqmZ+812rxafut7Q
 ujTk2uVhtGaH1mOonyKkeAP5AVaCKyRjoz698tOxhxSrxg/wx/NnVnje2XrrRUof5abE
 vAlNzDmGQ7WXMCJ1rxJd5S2YqkVdp/AaZuNVVbkvrA8PQUhGtOA95idGhHV/IeZ/Qm+b
 WbIRBcZg++kxgHFWNC9ho/dxMMFjpB9+Fg5M2k7sjsJhWC7mZUCdjNnDmRMswJ8ogVY+
 Njgg==
X-Gm-Message-State: APjAAAUpBABNwgn/De6Sn2/F+ro9w9Xt34fGICAFNM9oN8wVFPYOpmdb
 SWUE6pUL4ao8h4vYCJ5zSOcGJQ==
X-Google-Smtp-Source: APXvYqwuThtU4A/mri4NzUGBHAcK2MgyFs+8gbdooGl/MWkUm7KPcovCYTvXC/z4k/ahE/D2t+KbEA==
X-Received: by 2002:a63:2ace:: with SMTP id
 q197mr47314797pgq.102.1560757111428; 
 Mon, 17 Jun 2019 00:38:31 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.38.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:38:30 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 39/99] ram: rk3399: s/rk3399_base_params/sdram_base_params
Date: Mon, 17 Jun 2019 13:01:52 +0530
Message-Id: <20190617073252.27810-40-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003832_283680_9ECDF0A2 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Most of the ddr parameters are common in rk3399_base_params
structure and which would reuse it in another controller like
px30 in future.

So, rename the structure from rk3399_base_params into
sdram_base_params.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Signed-off-by: YouMin Chen <cym@rock-chips.com>
---
 arch/arm/include/asm/arch-rockchip/sdram_rk3399.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
index 67044f53e5..fe25446cab 100644
--- a/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
+++ b/arch/arm/include/asm/arch-rockchip/sdram_rk3399.h
@@ -121,7 +121,7 @@ struct rk3399_sdram_channel {
 	struct rk3399_msch_timings noc_timings;
 };
 
-struct rk3399_base_params {
+struct sdram_base_params {
 	unsigned int ddr_freq;
 	unsigned int dramtype;
 	unsigned int num_channels;
@@ -131,7 +131,7 @@ struct rk3399_base_params {
 
 struct rk3399_sdram_params {
 	struct rk3399_sdram_channel ch[2];
-	struct rk3399_base_params base;
+	struct sdram_base_params base;
 	struct rk3399_ddr_pctl_regs pctl_regs;
 	struct rk3399_ddr_pi_regs pi_regs;
 	struct rk3399_ddr_publ_regs phy_regs;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
