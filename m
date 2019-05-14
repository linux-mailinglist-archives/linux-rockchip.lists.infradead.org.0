Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C82A1CF3B
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 May 2019 20:40:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TC++vtWxyGKayQodtHIWR75AGAwq9ej1sjsD8Zw9ON8=; b=uzP1pZVnZda2RD
	wY9IiD5H7cEH0t2ZnK8F54VcF9BZoSMTrTJMLZYmLQecM7lQ3agbU9Cna0RdAu4aGPOor6Lz+12BJ
	amnmvJ7kcK2T4/RP10IR3tr90Hrs0FOE7HNn9/iPPnv7G4vfHk67AFCWOlKY89KpwinSLvTC0vCPz
	UAGODg/9YVR2Eumff7aTC4kMhfUm20jQXbmhD+YOQBU7I+XpIXnwTIU3ZCwrDTL8b837MxkEBkNPt
	sYDR47YKZhJqQOot7FT2yN2bLZ3md+r933eiTsKNliQz+azSzcY+FOyOr5QeFj6v90g/s6PilIr2t
	tYehYRz1oV+nNnyIlUHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQcLT-0008FI-Aa; Tue, 14 May 2019 18:40:11 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQcLP-0007xf-FT
 for linux-rockchip@lists.infradead.org; Tue, 14 May 2019 18:40:09 +0000
Received: by mail-pg1-x542.google.com with SMTP id a3so7837pgb.3
 for <linux-rockchip@lists.infradead.org>; Tue, 14 May 2019 11:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U5lmD3O2z0vSk4VQzRzNUrXAaT7ROOc/nk13EyEk/Z8=;
 b=H5Y9KXgwnq7ezY/NEDojzcCdz/MTUU2ltKGxRIk7MI7CfJPl17Hr+/0JzOFSuTp/HD
 jDhdlTjiAgAJeyqcChsshmGOG/i6tU6ESAAdF/KguksGOcQ3RtCOJPI7Ka+mo0jFkIES
 AF5gTR+hcgOEwZCn0zjbxF+tOlJQ23fa3GyBo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U5lmD3O2z0vSk4VQzRzNUrXAaT7ROOc/nk13EyEk/Z8=;
 b=ExnDGq/ZlSQ3sNeb+trGVBQoUIKpUgbgI81tnuthUnPXCxqWYj+aTI5lvo2ONttDYz
 G9njPIFcc929+BGMZWsCQQQsx05b7gYDEm/M7xH0kiBMNgYKFV+8qqNtDz8ih9eKySP0
 /QpcGGewNJ89ox35J27ASoTZqJws7VTgnw+4KFNJzecs+93vICIc9QFZADvWZVTsghTg
 Ix6QA05ylDMYD7B0G6PTNhZjt18uLAR+GEiuGZy7ZEKYM0TGyIILN1526yhA0C5i+W9a
 5jXaaSxhxHlZUnfjUo2WGd31ZL59m1ZBnNYUeoulmXrfZgH8cRW+WWwVp/TfhPBlmuHk
 IoQw==
X-Gm-Message-State: APjAAAWUqHIQC70RrBbKVxLwSKGeW56SdTqzrLw7podxvWfCfYhAoUIN
 KvxqwlLHFjXthksBa0uuh5OKNA==
X-Google-Smtp-Source: APXvYqzB/ncd07lY8oKwjyYs9cE0Ws3ptZ6OOxXnzgYsvm+RO6GmbunYYA6NV+JxBn4oUSn8b/7Vug==
X-Received: by 2002:a63:7909:: with SMTP id u9mr33519089pgc.223.1557859206272; 
 Tue, 14 May 2019 11:40:06 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id 19sm19182454pgz.24.2019.05.14.11.40.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 11:40:05 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Mark Brown <broonie@kernel.org>, Benson Leung <bleung@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v3 0/3] spi: A better solution for cros_ec_spi reliability
Date: Tue, 14 May 2019 11:39:32 -0700
Message-Id: <20190514183935.143463-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_114007_548151_C9F640EE 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

 drivers/platform/chrome/cros_ec_spi.c | 89 +++++++++++++++++++++++----
 drivers/spi/spi.c                     | 36 +++++++++--
 include/linux/spi/spi.h               |  2 +
 3 files changed, 110 insertions(+), 17 deletions(-)

-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
