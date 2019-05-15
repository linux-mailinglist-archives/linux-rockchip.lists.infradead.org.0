Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8571F8EB
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 May 2019 18:48:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VKbyAeUyLIClFi2Ei4UrX0GAT4OHfjZPSpZZUtTZ5v0=; b=ECgxUCSfrDIPKe
	4qmj+6A0x8yGvM9Urctuc/GlIT/V9MrhmWSsY+qMD8r1jZHq//Ofki73z8gCbzxv58QYPgLu0AXCo
	WNDQ4TD2e1/wbXClwUPmo42JBPKEBCpVgWDWbTDPO9P+MkdkRkIwzUjtYY4puWj7rxT223q3NEvqd
	30XpMsHZVq5OgDKWxTp1kYko5vLjmCGz2ifPxDvX1UGej9tvntclJ1nhTB80UEtDHJD5cIQqCz+y1
	jikO7qWlD4O+M7WBV1Hn6LaI/QZZPAGkDQcO3jbQD4HfkynTVMcZ+jfjbsOoGHBaviW/vheKhipTZ
	kL+m31RVq0iK9LSNL7xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQx5B-00036V-N6; Wed, 15 May 2019 16:48:45 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQx57-00035S-Sk
 for linux-rockchip@lists.infradead.org; Wed, 15 May 2019 16:48:43 +0000
Received: by mail-pl1-x643.google.com with SMTP id x15so139426pln.9
 for <linux-rockchip@lists.infradead.org>; Wed, 15 May 2019 09:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=21QkJe/2Ia3CukPow+HU/kJ5AbEkblcvaIotDZqjXzA=;
 b=F2kO3ZszvamvWVf9qDt95LSKsm3+VbzShvOGjnxWuGUkK6Qq/rXjTzV2gAovo5j8Cu
 wBzQDkqh9BhxdTamZIxGc0gf4BKHPvsWy8nOxB8mRGj0b8LZaHm2+45EW9QR4JP/lkg0
 uzT4J1rwxTOuzk/z8DnlmUj77asFnfyN42hKc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=21QkJe/2Ia3CukPow+HU/kJ5AbEkblcvaIotDZqjXzA=;
 b=VIAlvU0wu0qjVgwIcc5jjG3eAZvwS3GqADHHp3Z8w6te+JdFagayHfAxq7YkMhP21T
 pFqkHwMPEFPrnwwt9dyU7nYfMbSJkTDmk2cOenbJK3Iq/LSymk5G70l/c4pGWJ7Tk1+Y
 O8OIxFfLjP0U46jvxOyxwjmvvr8QLs0ycTwWlwnKAB6GQtbXo1ZbznVDc6XWe+aN6RRi
 DVNE7pTdbyY2d6zshzSC3vkmtdmQOuGZ6q71g/f7RkPE2Xt2xlSNQ2pKdyL/+C3KK61f
 g7gh11nIrVBdTctbW4qWa6z+OsOWa459WmhReYwPYcx5cJLFsHF/ly9BkIh53CqgmIEb
 fTdQ==
X-Gm-Message-State: APjAAAVjOtYlOx4cK9YJIabUyFWyRe2PS0vYTzTxWU4XB91827nc7OnQ
 gUvsF9HJ+JaD7VFxF4y72eZ+ug==
X-Google-Smtp-Source: APXvYqys5Q93YZ8pN7HdCJeSsFEq2sN4lDTJwQVRf0ernGwmzM6CRgYvXoFmn1BXw1O1PGqD1bXs9Q==
X-Received: by 2002:a17:902:29e6:: with SMTP id
 h93mr19940884plb.111.1557938921011; 
 Wed, 15 May 2019 09:48:41 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id h16sm6914595pfj.114.2019.05.15.09.48.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 09:48:40 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Mark Brown <broonie@kernel.org>, Benson Leung <bleung@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v4 0/3] spi: A better solution for cros_ec_spi reliability
Date: Wed, 15 May 2019 09:48:10 -0700
Message-Id: <20190515164814.258898-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_094841_953051_719868FA 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
 Guenter Roeck <groeck@chromium.org>, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This series is a much better solution for getting the Chrome OS EC to
talk reliably.

Patch #1 in this series is the most important.  It can land any time.

Patch #2 in this series (a SPI framework patch) needs to land before
patch #3.  Note that patches #2 and #3 really just fix a corner case
and just having patch #1 is the most important.  We don't end up on
the pumping thread very often.

Note:
- If you want some history on investigation done here, feel free to
  peruse the Chrome OS bug: <https://crbug.com/948742>.

Changes in v4:
- No needless init of err in cros_ec_spi_devm_high_pri_alloc (Guenter).
- Removed blank lines near #includes (Guenter).
- Switch to kthread_create_worker() and fix error handling (Guenter).
- Cleaner devm code (Guenter).

Changes in v3:
- cros_ec realtime patch replaces revert; now patch #1
- SPI core change now like patch v1 patch #2 (with name "rt").
- Updated description and variable name since we no longer force.

Changes in v2:
- Now only force transfers to the thread for devices that want it.
- Squashed patch #1 and #2 together.
- Renamed variable to "force_rt_transfers".
- Renamed variable to "force_rt_transfers".

Douglas Anderson (3):
  platform/chrome: cros_ec_spi: Move to real time priority for transfers
  spi: Allow SPI devices to request the pumping thread be realtime
  platform/chrome: cros_ec_spi: Request the SPI thread be realtime

 drivers/platform/chrome/cros_ec_spi.c | 66 ++++++++++++++++++++++-----
 drivers/spi/spi.c                     | 36 ++++++++++++---
 include/linux/spi/spi.h               |  2 +
 3 files changed, 86 insertions(+), 18 deletions(-)

-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
