Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6F148B11
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 19:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qbmW+qEVMqKhmAENqpXqevyFbJdJvV7Sz3nvWvufeKU=; b=g30EUp3HazBgdz
	0Wdoci6IiPW7IC1LwAKnIRT0PYBekCnT9c/9y1O8JQO68BaikWbnOmKZdhfFWek6GPSXaVaAzpLJL
	ekPo/LnS9N7+MQtQFIR4vBqbQy/pnxW4JfML313dJvPMsEDItGpQtAHEbKPb0AM74yNdORweClRC2
	gbqK4AthhZ5yt10yJNpCRJdronqu7h/KtBg9TX5GC4QrjkJh+QgPDLozuO+kJ4GDsFO2bBjh38Zkp
	0J76U2H7jqWj0GlTQ9PsCuJJQ0p7E2hujLymhdNVOXEns6L2TbpM78dh8qw3bB4d3i8su017r5JV/
	pXPwIL332eIRktMBugHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcvud-0002w1-Va; Mon, 17 Jun 2019 17:59:23 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcvuZ-0002ue-Jt
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 17:59:21 +0000
Received: by mail-pg1-x542.google.com with SMTP id 196so6236768pgc.6
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 10:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FlnZzdiFf1S0YMLoCTFEyV12ust5Dpo7bSpHKMU0s0k=;
 b=VIWj2CuRQEFDLQTpFrEiwh7JmnmIdikL7iboXsKITUDu17jDFvklPt+TErOhzcT4hL
 M45V1hxQGm9U+GrK+lQYDYIj2Ak6M6/DRUgQHo+Eh2Be+W6dF0MnnCpH29uTjmn+fKMv
 tP1d85wAvCnpc6uw+HsZKe4wc8XeCeeqZFD8c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FlnZzdiFf1S0YMLoCTFEyV12ust5Dpo7bSpHKMU0s0k=;
 b=jRR7EB1l+qXXEYyC2U9QbtKcaS1/ty7NrC5gzOmkOV58niyN+cX2P9vnxnR2ClFEoM
 0b2KBtvLHavX7X0SBhkQ0KdkDB6RCyqKlMsQ/t5exCrS1XhQ4j/rPYrIyWKYTwTs6BD9
 HkUDhaWnU/Mrxpk/R9G5CFyDUPpwfFwfHi7ZTuiwi2B1Ruxq0N4dRMIksxI0Hw+T1QoU
 CixvwNchvQxnoTcAnmDKbwTlO88k8NPe5ml+R/eYRTfbXzIjV7olAJMb93NFOvyVGj0L
 2wlDlyVCFXl67szKcXZ/bOg9Ho1Yi5J5ZkiDcJ+M37Fl1RSPjvWjIh2bzNYaEWQJ73ww
 dexg==
X-Gm-Message-State: APjAAAWyCeb4xNycN2YBfxSF5y8Mui7FFLAxFU8ANVItBNLW6DPzF/Zq
 j6CXvK3LabZLz7e/apE2EC76Ew==
X-Google-Smtp-Source: APXvYqyaVs3fvyMpOLZjM3c8dSSZ0GNGbc2/XbFy4Qlb/yNERuegnQR6T/3bb+Lh0yT+fdVq5jr3Gw==
X-Received: by 2002:a62:b40f:: with SMTP id h15mr107121375pfn.57.1560794358391; 
 Mon, 17 Jun 2019 10:59:18 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id q1sm15145809pfn.178.2019.06.17.10.59.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 10:59:16 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Kalle Valo <kvalo@codeaurora.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
Subject: [PATCH v5 5/5] brcmfmac: sdio: Don't tune while the card is off
Date: Mon, 17 Jun 2019 10:56:53 -0700
Message-Id: <20190617175653.21756-6-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190617175653.21756-1-dianders@chromium.org>
References: <20190617175653.21756-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_105919_674897_3B8C6330 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ondrej Jirman <megous@megous.com>,
 Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>, briannorris@chromium.org,
 linux-wireless@vger.kernel.org, Double Lo <double.lo@cypress.com>,
 stable@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Wright Feng <wright.feng@cypress.com>, brcm80211-dev-list@cypress.com,
 Naveen Gupta <naveen.gupta@cypress.com>, Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

When Broadcom SDIO cards are idled they go to sleep and a whole
separate subsystem takes over their SDIO communication.  This is the
Always-On-Subsystem (AOS) and it can't handle tuning requests.

Specifically, as tested on rk3288-veyron-minnie (which reports having
BCM4354/1 in dmesg), if I force a retune in brcmf_sdio_kso_control()
when "on = 1" (aka we're transition from sleep to wake) by whacking:
  bus->sdiodev->func1->card->host->need_retune = 1
...then I can often see tuning fail.  In this case dw_mmc reports "All
phases bad!").  Note that I don't get 100% failure, presumably because
sometimes the card itself has already transitioned away from the AOS
itself by the time we try to wake it up.  If I force retuning when "on
= 0" (AKA force retuning right before sending the command to go to
sleep) then retuning is always OK.

NOTE: we need _both_ this patch and the patch to avoid triggering
tuning due to CRC errors in the sleep/wake transition, AKA ("brcmfmac:
sdio: Disable auto-tuning around commands expected to fail").  Though
both patches handle issues with Broadcom's AOS, the problems are
distinct:
1. We want to defer (but not ignore) asynchronous (like
   timer-requested) tuning requests till the card is awake.  However,
   we want to ignore CRC errors during the transition, we don't want
   to queue deferred tuning request.
2. You could imagine that the AOS could implement retuning but we
   could still get errors while transitioning in and out of the AOS.
   Similarly you could imagine a seamless transition into and out of
   the AOS (with no CRC errors) even if the AOS couldn't handle
   tuning.

ALSO NOTE: presumably there is never a desperate need to retune in
order to wake up the card, since doing so is impossible.  Luckily the
only way the card can get into sleep state is if we had a good enough
tuning to send it the command to put it into sleep, so presumably that
"good enough" tuning is enough to wake us up, at least with a few
retries.

Cc: stable@vger.kernel.org
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
Reviewed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
---
Patches #2 - #5 will go through Ulf's tree.

This patch is still lacking Kalle Valo's Ack, which should probably be
received before landing in Ulf's tree.

I've CCed stable@ here without a version tag.  As per Adrian Hunter
this patch applies cleanly to 4.18+ so that would be an easy first
target.  However, if someone were so inclined they could provide
further backports.  As per Adrian [1] the root problem has existed for
~4 years.

[1] https://lkml.kernel.org/r/4f39e152-04ba-a64e-985a-df93e6d15ff8@intel.com

Changes in v5:
- Rewording of "sleep command" in commit message (Arend).

Changes in v4:
- Adjust to API rename (Adrian).

Changes in v3:
- ("brcmfmac: sdio: Don't tune while the card is off") new for v3.

Changes in v2: None

 drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
index ee76593259a7..629140b6d7e2 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
@@ -669,6 +669,10 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 
 	sdio_retune_crc_disable(bus->sdiodev->func1);
 
+	/* Cannot re-tune if device is asleep; defer till we're awake */
+	if (on)
+		sdio_retune_hold_now(bus->sdiodev->func1);
+
 	wr_val = (on << SBSDIO_FUNC1_SLEEPCSR_KSO_SHIFT);
 	/* 1st KSO write goes to AOS wake up core if device is asleep  */
 	brcmf_sdiod_writeb(bus->sdiodev, SBSDIO_FUNC1_SLEEPCSR, wr_val, &err);
@@ -729,6 +733,9 @@ brcmf_sdio_kso_control(struct brcmf_sdio *bus, bool on)
 	if (try_cnt > MAX_KSO_ATTEMPTS)
 		brcmf_err("max tries: rd_val=0x%x err=%d\n", rd_val, err);
 
+	if (on)
+		sdio_retune_release(bus->sdiodev->func1);
+
 	sdio_retune_crc_enable(bus->sdiodev->func1);
 
 	return err;
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
