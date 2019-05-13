Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 824F91BE8A
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 May 2019 22:21:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NB3rgs358Gmodz1Zp+zfzeCLn/cTSsQ9xLWutYE6D9s=; b=B3jlVaPByb36hv
	pGnBiDBu1MbrKzZ9R1c6VoJT7AP0ZSbeG1YW3ISnsR57AZyz3G/8/EMxoKIMXHrTmsmQXDDIvYBaz
	Zjem605Lg8/blB2xo4SOT9sbPNCYo2RiY6jhec5AnQ2gJVhI9ZygKVn5SgJhv4M3bw9YHfaVLbzhM
	J/55+Vm78VXTr4mHc97yVroG7+2ZG8oe8UUzN8ajHJDTjh+Q4LsXAz/dPfDZLp3olHBmqY7zKakXu
	gtYDbkgMTLZu/jESLIMJ49n63a6RNkZinxDFgl5xxYxTD2mu4kzKTPGzjh3BQrt8jlLIn1OmzslIq
	3EPoXhKg2v1tkzkFZQ7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQHRW-00082T-3o; Mon, 13 May 2019 20:21:02 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQHRQ-00080d-3L
 for linux-rockchip@lists.infradead.org; Mon, 13 May 2019 20:20:59 +0000
Received: by mail-pl1-x644.google.com with SMTP id f12so5010002plt.8
 for <linux-rockchip@lists.infradead.org>; Mon, 13 May 2019 13:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A0hIvZUUUL3EyRykGBdB7l1SOet5HjIbFD3tZy1lwZw=;
 b=lP34r2NWD/uZoRd0AmHrnPVr3Iay5m0VNeOUlwc4hniFrGufSZMjFpfwGXk+W85GBs
 NfDq9Njm4nXNu8kRznt9FC3BI+msSj8YszwBXIYYOhHJZFeJJqMuE8f0NIPFLskYUPGo
 xPrwdOGYOlGlnFbS4SFxOBOcejh3pG8VoKSnw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A0hIvZUUUL3EyRykGBdB7l1SOet5HjIbFD3tZy1lwZw=;
 b=sDyGuEkzA00MeUl6v0HamJcjmwOofVySG+kU5gzGRF2hYXXzU/dy92cHUzVUuP8xuu
 2FSuZkWlFUz6z3TUdPzR/h1+nsvk4/l+2nqg7yY5TVKF7dyHu43V1KyejH3nLf7ICN26
 38FlJvHygjDCgUFmDgSmXI/J+kvVZ5H+mjATOoXTjT2L3MXsz/W8YljPf5rE5uGRpRLR
 hBDo7RiDcIq2qeUq8MVfmrhzGtoQ3b+ampu0cbN/Qxjz0yso2Jd2Wec7k80i8Y4FL9XF
 iRJLmX5amiex3temZJcgDEG3kJTAzBIbyFTMo13YV+rQfEpR7j2I2YfULzrV+XVhWKVR
 XYbw==
X-Gm-Message-State: APjAAAW53dz3JfTEWlwUeGkN0W53x42eCVqxhVCGr6Ij/hk7y1TK6znh
 vH27HiIWPyqCPoN0O4Pih3ofiw==
X-Google-Smtp-Source: APXvYqycX98I9RrS0+2PLISochd9e1uNzSdWwjsBuwDbWsmLVvAd8DTtC/KuAkigAeIT07A+gaSOGA==
X-Received: by 2002:a17:902:7b8f:: with SMTP id
 w15mr33608247pll.314.1557778854816; 
 Mon, 13 May 2019 13:20:54 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id s198sm26356597pfs.34.2019.05.13.13.20.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 13:20:54 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Mark Brown <broonie@kernel.org>, Benson Leung <bleung@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v2 2/3] platform/chrome: cros_ec_spi: Force transfers to
 realtime priority
Date: Mon, 13 May 2019 13:18:24 -0700
Message-Id: <20190513201825.166969-3-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190513201825.166969-1-dianders@chromium.org>
References: <20190513201825.166969-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_132058_635464_B51B8995 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Let's use the new feature introduced in the patch ("spi: Allow SPI
devices to force transfers on a realtime thread") to specify this and
increase the success rate of our transfers.

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
Reviewed-by: Guenter Roeck <groeck@chromium.org>
---

Changes in v2:
- Renamed variable to "force_rt_transfers".

 drivers/platform/chrome/cros_ec_spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/platform/chrome/cros_ec_spi.c b/drivers/platform/chrome/cros_ec_spi.c
index 8e9451720e73..a2959365a870 100644
--- a/drivers/platform/chrome/cros_ec_spi.c
+++ b/drivers/platform/chrome/cros_ec_spi.c
@@ -703,6 +703,7 @@ static int cros_ec_spi_probe(struct spi_device *spi)
 
 	spi->bits_per_word = 8;
 	spi->mode = SPI_MODE_0;
+	spi->force_rt_transfers = true;
 	err = spi_setup(spi);
 	if (err < 0)
 		return err;
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
