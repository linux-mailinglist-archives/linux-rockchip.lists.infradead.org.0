Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7493D11AC06
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Dec 2019 14:26:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fA+ysjhGzqqUI9O1rjD20MvwifKO58Cx80jtt0uASr0=; b=FADbLOcZNFFTf5
	Wqa6IIsHVx9/QFdFe3OFHPB5YAcjOpuxojNFZZXuQLb+f4WtxIe86gAyIxm8XBJ7kqE4yZ9iGkn6D
	mwqylVwSdgQyB7Dsvmo15xeTtnXom/C0VXPZqzDTJhh3OTgg6s8SKOZ9u68N6ucPB2F2TJNVLMZF1
	SNeeMFHCwgCKI1eeEMU+eUp1JqA4Xp8oCXdCeicT8fdxhmhEHogPMISU13U6x/j2oM4V14K/DR1Ww
	Y9fLeicOtTJHam4jX87K3O0fBpbvu7OjXpYD/2AB5qJWkt6pO3pRIufwWB9Q+tnVXqCv0pNxFr//F
	0oHHEEmk99o6l19XqATQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if20i-0007XV-SM; Wed, 11 Dec 2019 13:26:36 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if20f-0007Wr-26
 for linux-rockchip@lists.infradead.org; Wed, 11 Dec 2019 13:26:34 +0000
Received: by mail-pl1-x641.google.com with SMTP id g6so1429510plp.7
 for <linux-rockchip@lists.infradead.org>; Wed, 11 Dec 2019 05:26:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pXcxAKpCnQ+ZZ4Zxl8d9jIOFK7f6rB8BTPhlKZTkakI=;
 b=P+Yc0+DfTBQ/XffyBoLxhf3U75l3np3ajhg5jAc3FnBsUVoPsBmDujBFLfy26Bkjti
 d7nXCFtjJCFgK3L7k8Vwmw+MgPsgaFYA/5TrJXAG+G+rOJ5JnWKdv2I1vvRDdLQ5m1Ld
 yx/5bZyjHWhyZ17UC7rWHkv9HjTuz7HAiHZkY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pXcxAKpCnQ+ZZ4Zxl8d9jIOFK7f6rB8BTPhlKZTkakI=;
 b=IwfG47aUR7/iBHmCSbkIz0Wd7TAx5x37REbJZNVi2zSESaePpyYom6WG8ZDfPuKlwp
 q2ySUGyBzBFbSHOA2BxaY8Q5u1us5PR8PPun0IU3oJ8fLGhXmk3W6RaSOQS4RfaV1IVk
 2fFnjikkfzFCKvMJMtE0rhw9Ju4EGivU5f/YL3qRTFduEsOIuc5MZQWArDSqB3OpSu0c
 L4RAPfdBnye6rdyQFBQm8c/+FaO+WrHLWwH6zWa7i4r8FCsiqkoYlsa2jaBC9qV09PzS
 5manlW0q3mgQXhj7FW15A4bhgVv1bx0+0RsXCrLqQ2Gh7usT1RALv50jl5uJD4IDPw70
 l9Jw==
X-Gm-Message-State: APjAAAWdYanRtRRVYGoT6Mj7i6yZfFJgLvRMyxPFbIBLHH5TPjj88VKz
 0g6LY9jpj+yqPylP4m+H5x59CA==
X-Google-Smtp-Source: APXvYqx1iptbVtzrMIQOP5W/LaK+LZ6rcK+a54IoFZ3PViyvosRydyZZ6LPuMoIg9MAg2QKwOEPgwA==
X-Received: by 2002:a17:902:b208:: with SMTP id
 t8mr3325665plr.38.1576070791778; 
 Wed, 11 Dec 2019 05:26:31 -0800 (PST)
Received: from localhost.localdomain ([49.206.200.202])
 by smtp.gmail.com with ESMTPSA id e23sm2716145pjt.23.2019.12.11.05.26.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 05:26:31 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 0/2] spi: rk_spi: Fix transfer size overflow
Date: Wed, 11 Dec 2019 18:56:21 +0530
Message-Id: <20191211132623.430-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_052633_543686_A8358CB2 
X-CRM114-Status: UNSURE (   6.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: u-boot@lists.denx.de, linux-amarula <linux-amarula@amarulasolutions.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

These two patches are fixing flash read with > 64K size and
spi flash read during SPI boot.

Any inputs?
Jagan.

Jagan Teki (2):
  Revert "rockchip: spi: fix off-by-one in chunk size computation"
  spi: rk_spi: Fix overflow max chunk size

 drivers/spi/rk_spi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
