Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D95AA2CB26
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 18:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GgdZTK0WIIBZbdulbYLWUjvG2rFSox1l5+4CJvlIH0U=; b=LKT+05aVRV/O2h8cMl1UUOa41
	pz7rqU+ZkJEEUYG1mHlvFzNUQ8fwI2h5tCG/9aete5poWmgLPdyiydWZdMc1mmdECN42tUsjLZmis
	788zwc/+Or4runwtKrcEIveggD/zjzQ8uAPAy5LIIJ//cDM13bAxTSPFiJQYqP/oiaXBrRf3mBq4L
	hgMbNzoBUrkc1EozL1hru0huYEEx4v0/HYxno55otsSkuPohsfJReYonVuTrq5cNa+AnouKfFUrk6
	fNVU8AWx5nAm0LoJLWfgNJjEGUCV/qI7d20ox5Bv4XwCHC4rEGBPcBu0sjKLmKgTzgz2FQkOewZro
	RHM+LpS0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVefG-0002dB-Uy; Tue, 28 May 2019 16:09:26 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVefD-0002cc-Kl
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 16:09:25 +0000
Received: by mail-ed1-x543.google.com with SMTP id f37so32492159edb.13
 for <linux-rockchip@lists.infradead.org>; Tue, 28 May 2019 09:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:date:message-id:in-reply-to:references:user-agent
 :subject:mime-version:content-transfer-encoding;
 bh=vRk13UBuyghmarVtMoNipwKyhaNgI5UNFGabtsK6EmA=;
 b=Yj+KkVBDDnZ/8AIrhCHLvON4pXXCjGtHPQEEoz8vJKL4kIw6tZM7+98BwwKEPq9FXc
 etAAdMu8UNml1JLKYqAsmy5Nos+w6uoFPRMqYeXDGpAPKgYVsKUSwKcjt+G7pfRPnZDa
 6FHHHI+ccxt0J39FNntur+/ef6vR55E+EF5d8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:subject:mime-version
 :content-transfer-encoding;
 bh=vRk13UBuyghmarVtMoNipwKyhaNgI5UNFGabtsK6EmA=;
 b=cGahZEGRzuBzLinVaOdVtR0Zm+BSQXDj/RSm/e8F6O2Ns4mHCxppPqBeKLFNKyzHaf
 15kckkoN+eor+uv3qOCzcVjgvjNIncxYFqNFxOwGH0vPQ/XTkh45HpOJxe+dI7azXQc3
 eqDLwmiurb1j4uQ2tOBFULgOvisWSCIjf3a/0Dd6vXCxNBHnDGq+HOwRR6+SI5IpVXRJ
 So47A0EVzazORkViq32rBc6xL2HVxnIkvb/Cr3vxd1WM9zQ1edVFXzQLwL8rIoMRnsza
 aQ+Zp/6KKgBz7jynCEIiwcZzTSNxKueayd3UezBfSSw+9BLdm1RBI1VMYydJSsQ+wjf1
 5Kkw==
X-Gm-Message-State: APjAAAW3nqXGxWnJ6MrH2lL5Lq9EmnH7y31JLqtg7ssaghF+nL+PJbc2
 kl+EAeQD64VAIt2yJbFpKDA5Kw==
X-Google-Smtp-Source: APXvYqwe2ChVgm/bVKPGBtODYBSt/7WwWY5djEtxSUGcNmr9IvNbLckoqL7DhwjmZsR7FQA8nMCQBw==
X-Received: by 2002:aa7:cccc:: with SMTP id y12mr2546618edt.124.1559059761737; 
 Tue, 28 May 2019 09:09:21 -0700 (PDT)
Received: from [192.168.178.17] (f140230.upc-f.chello.nl. [80.56.140.230])
 by smtp.gmail.com with ESMTPSA id u47sm4347734edm.86.2019.05.28.09.09.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 28 May 2019 09:09:21 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Doug Anderson <dianders@chromium.org>, Kalle Valo <kvalo@codeaurora.org>
Date: Tue, 28 May 2019 18:09:16 +0200
Message-ID: <16aff33f3e0.2764.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <CAD=FV=VtxdEeFQsdF=U7-_7R+TXfVmA2_JMB_-WYidGHTLDgLw@mail.gmail.com>
References: <20190517225420.176893-2-dianders@chromium.org>
 <20190528121833.7D3A460A00@smtp.codeaurora.org>
 <CAD=FV=VtxdEeFQsdF=U7-_7R+TXfVmA2_JMB_-WYidGHTLDgLw@mail.gmail.com>
User-Agent: AquaMail/1.20.0-1451 (build: 102000001)
Subject: Re: [PATCH 1/3] brcmfmac: re-enable command decode in sdio_aos for
 BRCM 4354
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_090923_689110_CE48569F 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Madhan Mohan R <MadhanMohan.R@cypress.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, YueHaibing <yuehaibing@huawei.com>,
 Double Lo <double.lo@cypress.com>, netdev <netdev@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 brcm80211-dev-list.pdl@broadcom.com, Matthias Kaehlcke <mka@chromium.org>,
 Wright Feng <wright.feng@cypress.com>, Adrian Hunter <adrian.hunter@intel.com>,
 brcm80211-dev-list@cypress.com, "David S. Miller" <davem@davemloft.net>,
 Naveen Gupta <naveen.gupta@cypress.com>, Franky Lin <franky.lin@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On May 28, 2019 5:52:10 PM Doug Anderson <dianders@chromium.org> wrote:

> Hi,
>
> On Tue, May 28, 2019 at 5:18 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>>
>> Douglas Anderson <dianders@chromium.org> wrote:
>>
>> > In commit 29f6589140a1 ("brcmfmac: disable command decode in
>> > sdio_aos") we disabled something called "command decode in sdio_aos"
>> > for a whole bunch of Broadcom SDIO WiFi parts.
>> >
>> > After that patch landed I find that my kernel log on
>> > rk3288-veyron-minnie and rk3288-veyron-speedy is filled with:
>> >   brcmfmac: brcmf_sdio_bus_sleep: error while changing bus sleep state -110
>> >
>> > This seems to happen every time the Broadcom WiFi transitions out of
>> > sleep mode.  Reverting the part of the commit that affects the WiFi on
>> > my boards fixes the problem for me, so that's what this patch does.
>> >
>> > Note that, in general, the justification in the original commit seemed
>> > a little weak.  It looked like someone was testing on a SD card
>> > controller that would sometimes die if there were CRC errors on the
>> > bus.  This used to happen back in early days of dw_mmc (the controller
>> > on my boards), but we fixed it.  Disabling a feature on all boards
>> > just because one SD card controller is broken seems bad.  ...so
>> > instead of just this patch possibly the right thing to do is to fully
>> > revert the original commit.
>> >
>> > Fixes: 29f6589140a1 ("brcmfmac: disable command decode in sdio_aos")
>> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>>
>> I don't see patch 2 in patchwork and I assume discussion continues.
>
> Apologies.  I made sure to CC you individually on all the patches but
> didn't think about the fact that you use patchwork to manage and so
> didn't ensure all patches made it to all lists (by default each patch
> gets recipients individually from get_maintainer).  I'll make sure to
> fix for patch set #2.  If you want to see all the patches, you can at
> least find them on lore.kernel.org linked from the cover:
>
> https://lore.kernel.org/patchwork/cover/1075373/
>
>
>> Please resend if/when I need to apply something.
>>
>> 2 patches set to Changes Requested.
>>
>> 10948785 [1/3] brcmfmac: re-enable command decode in sdio_aos for BRCM 4354
>
> As per Arend I'll change patch #1 to a full revert instead of a
> partial revert.  Arend: please yell if you want otherwise.

No yelling here. If any it is expected from Cypress. Maybe good to add them 
specifically in Cc:

Regards,
Arend



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
