Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB68D1A54F
	for <lists+linux-rockchip@lfdr.de>; Sat, 11 May 2019 00:35:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IN9eQfCCvweZ/lOwTGiEr4i1BIzx/xuv5LCeXxeyp0I=; b=IrlgM93z5xmI5k
	WfKcecfgbsymnPk1p1tfS2fqopdU1fWLRrAyk8machZhvuU0POIuy9K44B+phwIfvQepHjitkjWZM
	BUge49Pknc/ltlWOSP7Kk+GtgSZdd8M76Vr3T396axhS7nYASWeDnPkc1v3sSkMLTFPVxvvffJvmY
	3gbyGTHVdbnLtTxPzzbt40/UynixQD8Nz/m6z/7HUWNwg4ham6rKHrETZEpqKxPL9XM74ggL7hizo
	Y502ZRvRmeD3BQTb9jN1VqnJPHukMKhsv0P8Cv/B2Jrp3NCeLlJ2DaoQ9osNCbI89Ymab8ufJM7DT
	RuKhCkCGAdi9cg+cwMBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPE6q-0005Ko-8g; Fri, 10 May 2019 22:35:20 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPE6l-0005Fh-5b
 for linux-rockchip@lists.infradead.org; Fri, 10 May 2019 22:35:16 +0000
Received: by mail-pl1-x643.google.com with SMTP id y3so3454325plp.0
 for <linux-rockchip@lists.infradead.org>; Fri, 10 May 2019 15:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jTz3ssqMKwXih7kW/rvdj9F00tD72Ht0qosH9fDb+p4=;
 b=m5DmBmQbr31Nx984JHfCz3IviiH3OyT8HQZBJQFM6cOI5aigI4Q1QU5/kNqG58ZnzL
 G5AdfUDbw8rulMd43CuhdLXN4lqpXcrRNV64oa+qXQLvZpg5ZjXFusmd8Nfm3gylgfGZ
 EbNEyzhJHCYjJQgOcYgM0MwXEti/5KGL0K7uw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jTz3ssqMKwXih7kW/rvdj9F00tD72Ht0qosH9fDb+p4=;
 b=B7WHcZo6TbgPvgKh42zLWg+dIGC+Ig09GRAMLHtiX2gjtOnHSiQBwdFpULxQRxhwVN
 YGzgqUpnTFILGzW7XqoVVFR/1Yue2U0QB2DE4qrWQtWVMpxK45hCa+XArav8QQqH+FX2
 74lTGMFgQi6P9T5wzPbQ1f0xYjFkNYkWoodj690TFUFt2q2f7mP3WmLsW1bcUaipxk1E
 RUOPvnDUrhYT37AHu1gUQVV0AzzHg+i+JlHbqLbExs5DOUQtAjPCCxpseUmzpH08I2Pd
 f0QhAermSXXeWlNsfelt7cEuG3Mkc/XVhnJF+ztbQAkK2Zho5uSMEFn9HYhP5KRKSQon
 XVeQ==
X-Gm-Message-State: APjAAAV+CdwEj3Y0TLIFG3sr9b7JL1+q/FHmnSoOO5jI7r4IZi47Pi6P
 6nc5U2EZCm2mQ1R2O+yRyJvLLw==
X-Google-Smtp-Source: APXvYqxeP1i6s9XT+hR15W2dLlmU4slR1FOWV1B51dcqbURu9NlJ7G6AyDsoKuooSYOBtHCWskhj2Q==
X-Received: by 2002:a17:902:29e9:: with SMTP id
 h96mr16039999plb.258.1557527714413; 
 Fri, 10 May 2019 15:35:14 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id j6sm7689393pfe.107.2019.05.10.15.35.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 15:35:13 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Mark Brown <broonie@kernel.org>, Benson Leung <bleung@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH 3/4] platform/chrome: cros_ec_spi: Set ourselves as timing
 sensitive
Date: Fri, 10 May 2019 15:34:36 -0700
Message-Id: <20190510223437.84368-4-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190510223437.84368-1-dianders@chromium.org>
References: <20190510223437.84368-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_153515_306772_7DF051AE 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: drinkcat@chromium.org, briannorris@chromium.org,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Guenter Roeck <groeck@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

All currently known ECs in the wild are very sensitive to timing.
Specifically the ECs are known to drop a transfer if more than 8 ms
passes from the assertion of the chip select until the transfer
finishes.

Let's use the new feature introduced in the patch ("spi: Allow SPI
devices to specify that they are timing sensitive") to specify this
and increase the success rate of our transfers.

NOTE: if future Chrome OS ECs ever fix themselves to be less sensitive
then we could consider adding a property (or compatible string) to not
set this property.  For now we need it across the board.

With this change we can revert the commit 37a186225a0c
("platform/chrome: cros_ec_spi: Transfer messages at high priority").
...and, in fact, transfers are _even more_ reliable than they were
with that commit since the SPI framework will use a higher priority
(realtime) and we no longer lose our priority when we get shunted over
to the message pumping thread (because we now always get shunted and
the thread is high priority).

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/platform/chrome/cros_ec_spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/platform/chrome/cros_ec_spi.c b/drivers/platform/chrome/cros_ec_spi.c
index 8e9451720e73..757a115502ec 100644
--- a/drivers/platform/chrome/cros_ec_spi.c
+++ b/drivers/platform/chrome/cros_ec_spi.c
@@ -703,6 +703,7 @@ static int cros_ec_spi_probe(struct spi_device *spi)
 
 	spi->bits_per_word = 8;
 	spi->mode = SPI_MODE_0;
+	spi->timing_sensitive = true;
 	err = spi_setup(spi);
 	if (err < 0)
 		return err;
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
