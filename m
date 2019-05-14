Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8481CF3E
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 May 2019 20:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eq92jz4Ypud82wbiv4QXY1SQJ17AKEgXA3ebT7gAvgo=; b=L/ii/Lo1chlCBS
	9QogmciqgHEG86QsCJ7xEQvZQ9Pn9kVBT4fozFTnr9pHT9lcmo56fP3D/zkEp79nwf3M5YkU//AJO
	QlzXT4+OnU9Uhl3meYkZj8p2sArsyXkWXIWEQRsOdyV0qaZeZpz6ZnmXtGYp9AdHIqrWG/1us3Wuj
	8dEQW7qHjRdZkidWpb6FO+BMOjxxbjGyFetUVrsk7HGX60EJI7P4oY2qIOvfGbzxbNsQPaUUpL6nk
	KtNVIQv/m8g89ydXlKh5ZRMAR1ppWDngwDBIW2F3rcO68v1XJvFJkbtZFgj0wdSGg2/8yoF3jmbll
	4rv0p1repldWqj3mXbDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQcLW-0008HT-RP; Tue, 14 May 2019 18:40:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQcLR-0008ET-S5
 for linux-rockchip@lists.infradead.org; Tue, 14 May 2019 18:40:11 +0000
Received: by mail-pf1-x443.google.com with SMTP id v80so9590004pfa.3
 for <linux-rockchip@lists.infradead.org>; Tue, 14 May 2019 11:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OcHRjuNh3iuHe2OOeqLEpCHwon6We01Vth7kruZts9w=;
 b=oRNJMjbZONAB6lTSayFLjDb64FvQxZvxjxGC6/CKO2ajYShAfTvLkD9w9PaWC6ZucH
 +vlA7pUNbPaEblItuWqIla63p71/OmY69f1MIUvfvk80kREbcjkIS13egnrTlu4hXU6D
 sHLU9Ehp5dF7P7mVXByw/aPdWAuH6bb8FrmT8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OcHRjuNh3iuHe2OOeqLEpCHwon6We01Vth7kruZts9w=;
 b=EnBnk7eTwfKMtAkDw5ZJOvcMacc2pRcmqM42T7RRO3dKwk5GW9icqMepT009edxRBd
 3c2BF0+Fl6KJhP+AKPdi/CTVTj1IGgRlTwOl5FDZmnr8ZIW+7sTmOpik8b7QyvTGjdA3
 fJvy8VDGEvtXL+h/v9Q4zuW6mglXdTTPBRvII+eRgDoAUGWPVwetlUJENtYo9gRi9vNM
 di7qGTa5ob2s+ZD/zxC9DUWiuUhOl/5gP5T+B2bMgtV0s0ogQQGOAz3A/kzTAmR1YT0h
 feP4bi5OYR43YbYEYJ4vsDI9Kgb2WzTT+jmrhnwU+0fEFTNIMR7pMlktsan0Vu/v+M0F
 Z2Ow==
X-Gm-Message-State: APjAAAV1uErQufJnvBeAR6G2X2Fay6fiWqn2VC0TGSZLXyUiXSr1BXdE
 /mNicqvkm7gifvThAFapkqn4Ug==
X-Google-Smtp-Source: APXvYqyBf7wHRsbXM+g3mGM7sD2OHe50LO7O4N+pmTyuoJhSbjvQ0kDIHiQ/Be7y7EsTGEMCDe3euQ==
X-Received: by 2002:a63:5516:: with SMTP id j22mr37051377pgb.370.1557859209357; 
 Tue, 14 May 2019 11:40:09 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id 19sm19182454pgz.24.2019.05.14.11.40.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 11:40:08 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Mark Brown <broonie@kernel.org>, Benson Leung <bleung@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v3 3/3] platform/chrome: cros_ec_spi: Request the SPI thread
 be realtime
Date: Tue, 14 May 2019 11:39:35 -0700
Message-Id: <20190514183935.143463-4-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190514183935.143463-1-dianders@chromium.org>
References: <20190514183935.143463-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_114009_906235_79D4DA9F 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Changes in v3:
- Updated description and variable name since we no longer force.

Changes in v2:
- Renamed variable to "force_rt_transfers".

 drivers/platform/chrome/cros_ec_spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/platform/chrome/cros_ec_spi.c b/drivers/platform/chrome/cros_ec_spi.c
index b89bf11dda64..4f34e2215884 100644
--- a/drivers/platform/chrome/cros_ec_spi.c
+++ b/drivers/platform/chrome/cros_ec_spi.c
@@ -765,6 +765,7 @@ static int cros_ec_spi_probe(struct spi_device *spi)
 
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
