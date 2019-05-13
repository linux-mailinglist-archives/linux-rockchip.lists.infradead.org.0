Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 000FC1BE8B
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 May 2019 22:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z+OHu4o/g/st8FUm1GOcAcSYpgC+kfenphyuCvpK7rc=; b=WA91m7lL5CleMM
	ubq6m+zS+9bymbh5S1bFQ4MEppeOtNdO7k0AKqW7t7+C7eUgoEdO9rA1kL/IEP1jW8EY9T1meLHEM
	iQhOPOgeRuwYxgCGLSXFfVzGmLs5ATL0l2pUWYR++Vuv7F1njSqAW6jkUp956sBXLHkz9dx+i/Ahk
	3X7JLKD7YKRbyDRlm8DoCbtjla4Sg92Lv7dg7sjQQW0r1fWU6IoNJnPSpYsT9X4dwVPC4hQ0QydJb
	qiz1bNdFQNbHhB+OQ4t0tp7sv+vvRkQ9MoCtDz8pDUF3jGqGNl0+8+xg/faROOQF1sU9yHgFwS4hz
	9+8P5O5KreOzZCuO0kDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQHRY-00083A-MH; Mon, 13 May 2019 20:21:04 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQHRO-00080T-0Z
 for linux-rockchip@lists.infradead.org; Mon, 13 May 2019 20:21:00 +0000
Received: by mail-pg1-x543.google.com with SMTP id c13so7352848pgt.1
 for <linux-rockchip@lists.infradead.org>; Mon, 13 May 2019 13:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UXevDClJ1rO45drgBiu5kidYCiWEsQSHa18BKuPnW/Y=;
 b=jKhuRwVHZ3BDtVl3GK1PW+UIy07oLOd5IrGmCdwWxvnXCmxeJzoFlxajPbhhCvYs5D
 BiKtENMbOnb3jOZgBHcaSrZP/l9Q7h3Tk58SPzLplMitZrLm80I4da33Lr1TFoHeSAEt
 6w+h3T+w38C2MNdgEkMVyS6QO1y00sDDyvCBo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UXevDClJ1rO45drgBiu5kidYCiWEsQSHa18BKuPnW/Y=;
 b=nn0lAxzWfWw9a/TCC7dv76qwTNkhyE+CXDBBqTZXcdc7OafPqpPA308o3/fFvarnPU
 yzl0MjZSWN1AzssNtKEahRAD1Z2JS5fAKYoy9oZVdd4OxtGM6MS20fh9Q9dBwX0GesJT
 EBbaS3UZgSCN3EpJW5FSU2jDKyyGut1dWUtIC8p8CpDsr4HYiDigSCCeZaiCl3ETpyM+
 eUE9nRMbNz7+gfDYgVRXWmMt5nQYWSrE21NJrE4qnaH3utMptc+B6Nb1/0uml2O/CfSe
 BvYWiTFxytD04//UtsGZ0yAKN/6dMgbzbI7LXZGJjQ22UtC8I3i4c31b2BjEC1OLe3Cz
 MthA==
X-Gm-Message-State: APjAAAWdaA20PFVAbArwgmkaJsqdl+h9RsY8AH/gKgExM3pdh2ypV+8/
 m4lpsLZ6WcyNRHaWu+IsyTNKqA==
X-Google-Smtp-Source: APXvYqyLcsaawFWNgUONZhu9RhQR6qJPBSqV6S0MF4CC/aTGIeqwjn8gtglL9ZCx9wEKemTyfiSkBQ==
X-Received: by 2002:a63:5c1c:: with SMTP id q28mr33373287pgb.45.1557778852872; 
 Mon, 13 May 2019 13:20:52 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id s198sm26356597pfs.34.2019.05.13.13.20.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 13:20:52 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Mark Brown <broonie@kernel.org>, Benson Leung <bleung@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v2 0/3] spi: A better solution for cros_ec_spi reliability
Date: Mon, 13 May 2019 13:18:22 -0700
Message-Id: <20190513201825.166969-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_132054_075529_C0E19EE7 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
 Guenter Roeck <groeck@chromium.org>, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This series is a much better solution for getting the Chrome OS EC to
talk reliably and replaces commit 37a186225a0c ("platform/chrome:
cros_ec_spi: Transfer messages at high priority").

Specifically note that even though the above commit made things
better, we still saw some failures.

The majority of these failures were because we were competing for time
with dm-crypt which also scheduled work on HIGHPRI workqueues.  While
we can consider reverting the change that made dm-crypt run its work
at HIGHPRI, the argument in commit a1b89132dc4f ("dm crypt: use
WQ_HIGHPRI for the IO and crypt workqueues") is somewhat compelling.
It does make sense for IO to be scheduled at a priority that's higher
than the default user priority.

It turns out that we could also see problems because loop devices also
run at high priority.  See the set_user_nice() in
loop_prepare_queue().

Looking in more detail, it can be seen that the high priority
workqueue isn't actually that high of a priority.  It runs at MIN_NICE
which is _fairly_ high priority but still below all real time
priority.  We can do better by using realtime priority.  That makes
sense because cros_ec_spi actually needs to run quickly for
correctness.  As I understand this is exactly what real time priority
is for.  Note that there is a discussion going on about the dm-crypt
priority [1].

We also had other problems with the previous patch because sometimes
we'd end up on the SPI pumping thread and had our priority downgraded.

Both the competition with other high priority things and the priority
downgrading are fixed by this new series.

After this series I can run the following test on Chrome OS (which
mounts /var as stateful encrypted) with no errors:
  dd if=/dev/zero of=/var/log/foo.txt bs=4M count=512&
  while true; do
    ectool version > /dev/null;
  done

Special thanks to Guenter Roeck for pointing out the "realtime"
feature of the SPI framework so I didn't re-invent the wheel.  I have
no idea how I missed it.  :-/

Also note: if you want some history on investigation done here, feel
free to peruse the Chrome OS bug [2].

[1] https://lkml.kernel.org/r/CAD=FV=VOAjgdrvkK8YKPP-8zqwPpo39rA43JH2BCeYLB0UkgAQ@mail.gmail.com
[2] https://crbug.com/948742

Changes in v2:
- Now only force transfers to the thread for devices that want it.
- Squashed patch #1 and #2 together.
- Renamed variable to "force_rt_transfers".

Douglas Anderson (3):
  spi: Allow SPI devices to force transfers on a realtime thread
  platform/chrome: cros_ec_spi: Force transfers to realtime priority
  Revert "platform/chrome: cros_ec_spi: Transfer messages at high
    priority"

 drivers/platform/chrome/cros_ec_spi.c | 81 +++------------------------
 drivers/spi/spi.c                     | 49 +++++++++++++---
 include/linux/spi/spi.h               |  5 ++
 3 files changed, 52 insertions(+), 83 deletions(-)

-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
