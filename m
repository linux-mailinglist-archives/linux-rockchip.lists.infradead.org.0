Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C9C1F8ED
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 18:48:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aqoDPKzSj+wssP0f6onilGMELdLmU9K5pXkKzKgOmWE=; b=OcEwulExB++DMN
	ki5pxBKrQFAJpXtlRF/di8kt4JIq40bfZo1nHHL241XYB8+thnlCmLtnLX6tfq+pByTt0eI8i15eT
	ekZVXpvD5IAhXttrXJJ6xCMmlaS8c3BTTecEuc5lgSvjDiZWgsTea5xDnbzlVIlMvsD+JreWEzE1M
	qQ5wsqzd5vty7ydiC882HCHkSpKZlS2axZA8PfAyKLZQgac8xohwIYOaQTWHbxtZc93LLja44uou1
	5R7aFfkxYG714R50qbtbm9JPbKYSvo3sh8yjUnnB8NnXatlrUmvd/K4fp34+5IQtG41BChmOknyP4
	NYK04s71n4GYEGNjnhaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQx5E-00038L-Je; Wed, 15 May 2019 16:48:48 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQx5A-00036C-Sk
 for linux-rockchip@lists.infradead.org; Wed, 15 May 2019 16:48:46 +0000
Received: by mail-pl1-x642.google.com with SMTP id g5so158156plt.2
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 09:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lAmM7t9L5FMpWArr+XZL1VMYifzyuZh9O9R86wfoN2Q=;
 b=i9Fp01ee3cpiAALGgeu13VG7tby0ZhpT0P1MJveFUU2dS8KmRBsypy/ZjXem7MH+iF
 pvaF+6YOeK/EGGDG8s2XUuwsLZAl15aNIVlzDwlXgBKN0Yyg8/Kt4K8KTCR5R2L0yPVB
 X0l2VCVDzhoR5X8jSqGsAdZWxjlo+P8eK5xEo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lAmM7t9L5FMpWArr+XZL1VMYifzyuZh9O9R86wfoN2Q=;
 b=lsl5LQEdQ2x7ssW7rz9VuKbHlazqPF7O0eaP7BOX/G+nzKjX2wRIJzVBUKsfGcL1wF
 LwF7a0Q3DMcuH6oaP4EQK6i7fXMAPH/2VN/IgP4hKCWPEkD0PBpsR+/2qobimvE/MR5l
 aapsRpibMNw3OVNZLFihPLWI7XwvntZfTyIBNb0ZZr5s/dff1C0oYbMAjWSdnBKZTDx2
 KOR5r+MnyiM1ruyAo/2Aj/xl69L+YX+VYxAdhtRVAiul/CU/NCvrIRUhlST7afZGHIJM
 pXs22WTZb7K5m+dYLIGCz7Oka7Dz7psI+Hg1HI7N7L8UVdIaEGIe2LbWDWTPxqtAMAe8
 e7uA==
X-Gm-Message-State: APjAAAXI/FGwpyWhKiBn9rDmLgt38UjxUZcHpqrzuOKhMso8UVjfUc8U
 0FlgJthO7Cf5XIrUkaEALHYcwg==
X-Google-Smtp-Source: APXvYqzMXvxNl7/rjW0EYESFViIiw/YEYqxM6GoGqqV2ZlNRyaXG+L154AlqZyiAX+ayj6tCqnFFrQ==
X-Received: by 2002:a17:902:aa85:: with SMTP id
 d5mr43570705plr.245.1557938924335; 
 Wed, 15 May 2019 09:48:44 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id h16sm6914595pfj.114.2019.05.15.09.48.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 09:48:43 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Mark Brown <broonie@kernel.org>, Benson Leung <bleung@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v4 3/3] platform/chrome: cros_ec_spi: Request the SPI thread
 be realtime
Date: Wed, 15 May 2019 09:48:13 -0700
Message-Id: <20190515164814.258898-4-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190515164814.258898-1-dianders@chromium.org>
References: <20190515164814.258898-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_094844_922572_B6A0A1C6 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Let's use the new feature introduced in the patch (spi: Allow SPI
devices to request the pumping thread be realtime") to request the SPI
pumping thread be realtime.  This means that if we get shunted off to
the SPI thread for whatever reason we won't get downgraded to low
priority.

NOTES:
- We still need to keep ourselves as high priority since the SPI core
  doesn't guarantee that all transfers end up on the pumping thread
  (in fact, it tries pretty hard to do them in the calling context).
- If future Chrome OS ECs ever fix themselves to be less sensitive
  then we could consider adding a property (or compatible string) to
  not set this property.  For now we need it across the board.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Guenter Roeck <groeck@chromium.org>
---

Changes in v4: None
Changes in v3:
- Updated description and variable name since we no longer force.

Changes in v2:
- Renamed variable to "force_rt_transfers".

 drivers/platform/chrome/cros_ec_spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/platform/chrome/cros_ec_spi.c b/drivers/platform/chrome/cros_ec_spi.c
index 1e38a885c539..daf3119191c8 100644
--- a/drivers/platform/chrome/cros_ec_spi.c
+++ b/drivers/platform/chrome/cros_ec_spi.c
@@ -740,6 +740,7 @@ static int cros_ec_spi_probe(struct spi_device *spi)
 
 	spi->bits_per_word = 8;
 	spi->mode = SPI_MODE_0;
+	spi->rt = true;
 	err = spi_setup(spi);
 	if (err < 0)
 		return err;
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
