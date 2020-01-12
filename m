Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B1913842B
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 Jan 2020 01:16:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=37x/11clWjyCRzqPewVWjCs5sVXvTE636Ejut+JSPo4=; b=H4Nh7nnb+c1ECW
	uGEGgW/rBAe17I7i0eiWrEXiOXEnkiCWKS9bB3eHUGA2aZYWc21kr3dkQxCpjlOnIY1Yxzo1K8NS7
	rOpwyelmUKZv5MS4Lvr7wO/dJCIUYVZ7BvlAXcpMs/9aYryhDjT58qpLWxJQHG4rIIuSffrrpeRJW
	5K4hdsekbSi0YRBtUUOeeCeYIG9v/gVg+9nLFA6Q2C7N8bYa9bM7aewdiwUOabJI8A/YBn6kfVLc4
	Bnrk0WniC3SKbyntgNbs1/RDzkj1BGZJKx1fxp1T0YnokDLj1kYGaqswdhS/B/QIAhfyrKJGuRiZY
	RGMr2qi3v5/2eqPvXDig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqQvy-0005eV-E4; Sun, 12 Jan 2020 00:16:50 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqQvt-0005cL-R2; Sun, 12 Jan 2020 00:16:47 +0000
Received: by mail-wr1-x444.google.com with SMTP id t2so5221484wrr.1;
 Sat, 11 Jan 2020 16:16:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AjUv0l8hskCQu/sfhTW+zT+JFalMEnxaLpHc5wjsSrk=;
 b=uZapQ+by1rty3HyhlkQGQkL4kSQRFma4TxmcNEsHnvBp7pkpTBMBX3vgVUMG3/IClu
 IdHTMtYLKZeVzzvg+Qfdyi/l7s5XskJDnMxZRuZsGRBMoTHlDD+YnLEQHQ5eS3CFXphI
 HIDuL1wMXLwd/+ib2+jlhodUqkboDBpYVhCZ5GkTDadamEcaOfwQJfCx6JGEM9subtBS
 xfJqEWOS4NkPl+/XTRZ0RgtsvZMJu96IjLswacwCUb09BNsTfFjIpPpEW6Fjh+gXEaQ5
 2Sm1qgWUR++mXkO7AZvhOE5GSRKeOomTQo9+/4P8ZcgDTlCPaCdNAgc4uKiDO5BU5VQB
 r3Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AjUv0l8hskCQu/sfhTW+zT+JFalMEnxaLpHc5wjsSrk=;
 b=aVqtFESxvitsYbrcQzVnUXKragsBo/IRyEMAKPeS3vJ3ckG2TbDkVDReVA+Z5IY/c6
 CjHvXsUA21tnZuksJiGbF34SG7iB0R6LoGddE8UaBcYQcOsbWIkrgAKHnhZhE0ciKAbB
 O9mYgrx9qc+GxK75fOWrRQK5U5DEtPuEDrqfzxWcDpTA2VJqr7G68DKrXraTjAlyu5mG
 f1Bk16Tfy5VJxxSDCteTeNn1TAs9G2Rh/DuVsxXuY7xUEY9lJV4FOdmXq1t/9hQcFaZa
 PlO5IAmAsyZJySA4vG7vQZkTLSph3tNbe/8UiLAnkAWHl9dzyEje365AqXjEyBlvtoZM
 uXDA==
X-Gm-Message-State: APjAAAX0Y7HCTzdx+iRLfHo0dLrV1tk41bYTqYCul/y9jVfoL9SS5JQq
 nIjlN0xFG49eQZF1vYXQ5H0=
X-Google-Smtp-Source: APXvYqwxgbwC6cX6oTmsyFU5iWJhMbjSDPZ+lTlZ+fPIHUdsXfTc9BQoIDqOEKQOSfKrzV9ga6hutw==
X-Received: by 2002:a5d:44cd:: with SMTP id z13mr10795278wrr.104.1578788203919; 
 Sat, 11 Jan 2020 16:16:43 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id h66sm8575535wme.41.2020.01.11.16.16.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Jan 2020 16:16:43 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: dri-devel@lists.freedesktop.org, alyssa@rosenzweig.io,
 steven.price@arm.com, tomeu.vizoso@collabora.com, robh@kernel.org
Subject: [PATCH RFT v2 0/3] devfreq fixes for panfrost
Date: Sun, 12 Jan 2020 01:16:20 +0100
Message-Id: <20200112001623.2121227-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_161645_899860_B411D74C 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-rockchip@lists.infradead.org, daniel@ffwll.ch, sudeep.holla@arm.com,
 linux-amlogic@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

These are a bunch of devfreq fixes for panfrost that came up in a
discussion with Robin Murphy during the code-review of the lima
devfreq patches: [0]

I am only able to test patch #1 properly because the only boards with
panfrost GPU that I have are using an Amlogic SoC. We don't have
support for the OPP tables or dynamic clock changes there yet.
So patches #2 and #3 are compile-tested only.


Changes since v1 at [1]
- added Steven's Reviewed-by to patch #2 (thank you!)
- only use dev_pm_opp_put_regulators() to clean up in
  panfrost_devfreq_init() if regulators_opp_table is not NULL to fix
  a potential crash inside dev_pm_opp_put_regulators() as spotted by
  Steven Price (thank you!). While here, I also switched to "goto err"
  pattern to avoid lines with more than 80 characters.

Known discussion topics (I have no way to test either of these, so I am
looking for help here):
- Steven Price reported the following message on his firefly (RK3288)
  board:
  "debugfs: Directory 'ffa30000.gpu-mali' with parent 'vdd_gpu' already
  present!"
- Robin Murphy suggested that patch #1 may not work once the OPP table
  for the GPU comes from SCMI


[0] https://patchwork.freedesktop.org/patch/346898/
[1] https://patchwork.freedesktop.org/series/71744/


Martin Blumenstingl (3):
  drm/panfrost: enable devfreq based the "operating-points-v2" property
  drm/panfrost: call dev_pm_opp_of_remove_table() in all error-paths
  drm/panfrost: Use the mali-supply regulator for control again

 drivers/gpu/drm/panfrost/panfrost_devfreq.c | 44 +++++++++++++++++----
 drivers/gpu/drm/panfrost/panfrost_device.h  |  1 +
 2 files changed, 37 insertions(+), 8 deletions(-)

-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
