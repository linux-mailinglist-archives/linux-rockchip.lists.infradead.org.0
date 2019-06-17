Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4FD47B0C
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:36:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1f77En2KeBiJUn38qkW7mk7+uRD0IGu/kl8rcLZRFQs=; b=pZNsdnNBl73YGD
	HU5uxUsmPrIWjZhi09kF4X7MpapSt78ivVWfh/wFgZVJ4ScXDSsa4eY9oY1/KjSdJ640K7toI2+7X
	LIA5Hb9OYoS//IksW/UxUlYUs1He7K+ftR6pBSESJM/HC8vNahxycZE4v0F7Y4qNb5CdNoY44Hj0l
	AL+pqliX+V0BMzapRZHv0zq1t2x2oOLxFiDmX8DvXtl52mZ15Gun/yEPn6heflNGaZOgyd+XXdaG5
	1B1c61SrBGjirA2cb25SRY6EXYe85UGuJI6oKDpDb3hV+FpNxq2WjNZiKuggTbInkxd1+p2ghfVka
	Ms0vSQs2E1jGtwRgybkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmBr-00054c-VN; Mon, 17 Jun 2019 07:36:32 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmBn-00052Z-3G
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:36:28 +0000
Received: by mail-pg1-x544.google.com with SMTP id w10so660428pgj.7
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kUf6hry55EpeltHbc57IsStxotQiI0hZiJt888uW2bg=;
 b=Nuad4R+HgXrIcMT7co3Sjs8ieuf8UeaU+D9ZPSShm9lYaH/rDyUCPR4/EW8uDPFNeR
 toFBYNKOhHWxqph4bxU/vHBkEDXJJALFKH0SEDLrcp9flSmK2Zsw6SKrWjTn4d2GTvyL
 StLWWIEVbH5lTGy5w4aO6sgtNEysVh9DqzeKA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kUf6hry55EpeltHbc57IsStxotQiI0hZiJt888uW2bg=;
 b=eae/zZ/KxRXmPRr5igSUNKxE1VvMYRW2RxAk04QvRXum6ZKQd82DHUbEfziqnx+FOo
 QvRliUPPB4Jie9GR1VpndUhd9FL8scZyanzoIYLE1h64g/eI32REZPCqPXEnn8QX7RBS
 F/v00Ovcw+IWq6t2+l4x07Jykndt3l8GO7/86cUj7oetIQn2DLHkD6nbHnbH0+O3Ux0P
 LNF7n9WEOfEwhebeoRL0dg8zwpVZlPK3oKn0MORT7Dh2pM9R3yiEfYjd4suYcpN0MxSv
 rjA6BjQ6HGnC/IHgOIeNX+/odJoARf/v+z64trNDtnAbCjzCiRzv/PjwCvd1BZHKQpDR
 Rdhg==
X-Gm-Message-State: APjAAAVhfuFMxYubPecS9YZC3AZZa5Y/KtdDXpL90R8YT0qtwZHX3rf5
 dC1rtFtCTmkJHH68Lnj6Mc0rWA==
X-Google-Smtp-Source: APXvYqyK3zhOOryq00fuZ9lL1n1COSTlatRQV7G2tsJ468wGp9lEfXxDC4/Geud0ZVWxiTnstPLSiw==
X-Received: by 2002:a17:90a:1b48:: with SMTP id
 q66mr23744941pjq.83.1560756986189; 
 Mon, 17 Jun 2019 00:36:26 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.36.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:36:25 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 02/99] ram: rk3399: Add space between string with format
 specifier
Date: Mon, 17 Jun 2019 13:01:15 +0530
Message-Id: <20190617073252.27810-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003627_165450_5D394EEF 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Add space between string with format specifier on missing
print and debug calls.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index 541e4a4b1e..8191ab6176 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -1180,7 +1180,7 @@ static int rk3399_dmc_init(struct udevice *dev)
 	}
 	ret = sdram_init(priv, params);
 	if (ret < 0) {
-		printf("%s DRAM init failed%d\n", __func__, ret);
+		printf("%s DRAM init failed %d\n", __func__, ret);
 		return ret;
 	}
 
@@ -1198,7 +1198,7 @@ static int rk3399_dmc_probe(struct udevice *dev)
 	struct dram_info *priv = dev_get_priv(dev);
 
 	priv->pmugrf = syscon_get_first_range(ROCKCHIP_SYSCON_PMUGRF);
-	debug("%s: pmugrf=%p\n", __func__, priv->pmugrf);
+	debug("%s: pmugrf = %p\n", __func__, priv->pmugrf);
 	priv->info.base = CONFIG_SYS_SDRAM_BASE;
 	priv->info.size =
 		rockchip_sdram_size((phys_addr_t)&priv->pmugrf->os_reg2);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
