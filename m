Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C781BF0C7
	for <lists+linux-rockchip@lfdr.de>; Thu, 30 Apr 2020 09:04:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bc7Luk2uWwXAhVHhbPvwXmF/R/rpp3DOTcHGUYX9WGc=; b=iISq7zsRGdrNz5i6Vg6WiSpx2v
	XXYPyOnSVlj5ol5SJUuQwopQnav4OCcqaFrlDYGShAmjoP8mrE80Vhx+5PxNI5megedSX3idS+Z7b
	jD6tBxUy6Q7KkRRt0GmFai3/GCv8TWqtxbLx7ENMCG26PKn/jB546Dsk4gxjo6Y5wuA/BEaw2QM0n
	0KSo0AfyMG/rhO5C96YENQ4DAJgrurD7fujN9T1FsM3xOetm9v7pl9RN3fHHE3gCsfP2+9nlu95UQ
	kiwRGebPmAm9dq2ALTMHAmlzzrTUaevJpuQTuAVrSBRXwm9Q5QAYpCzjcj3/A9jzW1sIcyLLYZm4o
	XB3MGsHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU3FV-0006Ji-Rw; Thu, 30 Apr 2020 07:04:45 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU3FS-0006Gx-I4
 for linux-rockchip@lists.infradead.org; Thu, 30 Apr 2020 07:04:43 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ms17so344095pjb.0
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Apr 2020 00:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GPV3Zk54Uc5uKzvhitTdYhJEIJtNWZE8p1htkX1ToAY=;
 b=dOK6+5AcNzwpD0ub/iMOj90UdVGBN2A5ZYt+JYVAlL2DSrUUaQKnOau0ErOKXzu9KZ
 x5bhr3luWv+pAuWBCcE4RFQJ5UjaeTJ1eV361zlZ/tWOAyzDMdssD3hAwizuMX20nw/k
 cL2SVCi00+kBbmN7KcPjvgOG/4p0w0Luw+SJk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GPV3Zk54Uc5uKzvhitTdYhJEIJtNWZE8p1htkX1ToAY=;
 b=aeBQdifGo1xN47GruzgMFCe89nNc1T/+b8fqC3yS3NMcJGTvJiA3nPYoAoNOyNxTn5
 ZXwy8PungMQECbPLlb2SDkEr9x+bq3iVmIxxmqPmV+LwVuvBQ1xfDIEIL1DvsFOVqYyl
 pQRqB3BYPHDReQqLkIBqYrp4eIjR9FiXQy5nfGM7Ib4gYdfdqJQVTf+cZhT4UZvp8+R8
 FM+jdA4eBBjSi00+VWN7yfLjxPDr7HqteY/QmkbBQaeb4nUenj/BHW2gYaEA9GyqT7PG
 8KHrfMiwoTHNxcKm8ksREnuOmQPwB9QdCAK6bSEPl84XmyRef+H2gKF1houZZMxHNjdw
 tvYg==
X-Gm-Message-State: AGi0Pub0MWiRIndF2SgrHqJC2RdUPrPbqfxonRvQT2FPtQgvgnMuO1a6
 LO7x3Lc43l2b3uzSTzLpARRZaQ==
X-Google-Smtp-Source: APiQypIu+8DsiWT8mVcalHVovnFxzXlDC2xVimGV1H9P5VUIJh5LnQ1naV8VdWFVbqZw3giuygaYow==
X-Received: by 2002:a17:90a:cb86:: with SMTP id
 a6mr1306326pju.127.1588230278676; 
 Thu, 30 Apr 2020 00:04:38 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6514:3619:d1af:85f6])
 by smtp.gmail.com with ESMTPSA id p64sm964143pjp.7.2020.04.30.00.04.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 00:04:37 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 4/8] clk: rk3399: Enable/Disable the PCIEPHY clk
Date: Thu, 30 Apr 2020 12:34:08 +0530
Message-Id: <20200430070412.12499-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430070412.12499-1-jagan@amarulasolutions.com>
References: <20200430070412.12499-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_000442_592761_8330228A 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: patrick@blueri.se, linux-rockchip@lists.infradead.org, u-boot@lists.denx.de,
 Jagan Teki <jagan@amarulasolutions.com>, sunil@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable/Disable the PCIEPHY clk for rk3399.

CLK is clear in both enable and disable functionality.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- clear the clk in enable

 drivers/clk/rockchip/clk_rk3399.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/rockchip/clk_rk3399.c b/drivers/clk/rockchip/clk_rk3399.c
index df70e9fa88..7feba92f9e 100644
--- a/drivers/clk/rockchip/clk_rk3399.c
+++ b/drivers/clk/rockchip/clk_rk3399.c
@@ -1136,6 +1136,9 @@ static int rk3399_clk_enable(struct clk *clk)
 	case HCLK_HOST1_ARB:
 		rk_clrreg(&priv->cru->clksel_con[20], BIT(8));
 		break;
+	case SCLK_PCIEPHY_REF:
+		rk_clrreg(&priv->cru->clksel_con[18], BIT(10));
+		break;
 	default:
 		debug("%s: unsupported clk %ld\n", __func__, clk->id);
 		return -ENOENT;
@@ -1209,6 +1212,9 @@ static int rk3399_clk_disable(struct clk *clk)
 	case HCLK_HOST1_ARB:
 		rk_setreg(&priv->cru->clksel_con[20], BIT(8));
 		break;
+	case SCLK_PCIEPHY_REF:
+		rk_clrreg(&priv->cru->clksel_con[18], BIT(10));
+		break;
 	default:
 		debug("%s: unsupported clk %ld\n", __func__, clk->id);
 		return -ENOENT;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
