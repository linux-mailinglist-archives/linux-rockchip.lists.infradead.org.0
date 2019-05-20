Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC41124054
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 May 2019 20:28:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=avqGdR/uk3U076xOWShsGyw7thWtmrB3x+YpiSAXu0Q=; b=nuAWV9GAaoQT9y
	kADAYRRVcgl41lb2m+3OUXd7VR7JJxskFmq5Fvkm0yWz8qTPKOl5H3xQYEYnJcVg97IxT8hGo+mYk
	vdMAymt0jNwTYUO5kXH52gVZPrWzfyvWWYpKdXdxT607oFBlUZdXhLqGSYOpMKFeJNj5B+kpIzo8h
	E6ntJNLthnZQN4VJ+h27f406unbBZgPgStnrO6P8Xjc2U+vob2kFw0nx+rjCtasD9ZqncgiNrJWk9
	WJOIRXt9Nzcbg36z7tr9r1MzKvApdBK2QZpcAbCWiUWKL8tSgb/xwKPbzkAN7pSM/S0MwMq3VqX23
	jKbviPXXBQKp5IlXP9tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSn0v-00089W-36; Mon, 20 May 2019 18:27:57 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSn0f-0007rG-MD
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 18:27:55 +0000
Received: by mail-ua1-x944.google.com with SMTP id a95so5596424uaa.13
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 11:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cEsXYaOHHpFfqvOIf/R9j2mgz7hkA3ZSG0hiHjJfsfQ=;
 b=oYB6QTOAyrW+xrurBLaMKPFnUo9r8uSNIw0B5/zqa2y0TSIR3nr+FiEhLSwmdmx4XT
 PSW8n6oIFIvgbr1Q8u1FLhEjC2pMWGPcFrxz9D/vDnrjHb6YxdngV4/rsvj4XVMkiS7u
 zji43e+I4SpiwFIfKB7pf85C9sv2FuOd9EGRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cEsXYaOHHpFfqvOIf/R9j2mgz7hkA3ZSG0hiHjJfsfQ=;
 b=EoRbUEiUd+n/igpedU06I1lTX9cFOKvWyWVINsWZW/n124LJVZR2pzp5cT6rMQ4Pav
 2NCwtvB+H6CB5bARitNaGsl1Q3LrpUk0116nwZ1hoo9mjVxLZ9vrsuWKcHZ9wvxuq+JR
 ClrwVjqdLMX+50JVuksnV92HaefIQUw8vjW4xZc5yIOkE/o+5oe1yA1nKuzvMsV5twEU
 6TQO5hd8wpPal0Yo1/XKaHXBGKmXjgQYV9DVp8bRrtYMNoGFBlmzfGn+t+p9/Zz0lInv
 8W9fIrW7dPegcFIpGv8LaeHYxALB999emakGOWT7hVbfNTm4xVGCeajiORANRIfjkqOx
 yL+A==
X-Gm-Message-State: APjAAAWtDcZoIhaKqUB2MOopg6L68yQE7WfZHy2VhlWP3tHaNfMXuw2W
 5Y3glJzLktwfUSrIq7uRNbxjZkUsn7Q=
X-Google-Smtp-Source: APXvYqytUkNCSuv+ZThIoBZv5r10l0wUcJYtSV8X6/UPVhG1d7OZgxRMRlK4QAeiSwkRkxNhO91HWA==
X-Received: by 2002:ab0:24d:: with SMTP id 71mr38494224uas.31.1558376860118;
 Mon, 20 May 2019 11:27:40 -0700 (PDT)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com.
 [209.85.222.41])
 by smtp.gmail.com with ESMTPSA id d133sm7810755vke.19.2019.05.20.11.27.39
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 11:27:39 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id 7so239254uah.1
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 11:27:39 -0700 (PDT)
X-Received: by 2002:a9f:24a3:: with SMTP id 32mr13553176uar.109.1558376433588; 
 Mon, 20 May 2019 11:20:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190517225420.176893-1-dianders@chromium.org>
 <20190517225420.176893-2-dianders@chromium.org>
 <e3f54bcb-8d10-1336-1458-2bd11cfc1010@broadcom.com>
In-Reply-To: <e3f54bcb-8d10-1336-1458-2bd11cfc1010@broadcom.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 20 May 2019 11:20:22 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Uvc1wUQe-W1Jvm_gQ722pFm2a4OWvJDNVtkyQynFe4Gw@mail.gmail.com>
Message-ID: <CAD=FV=Uvc1wUQe-W1Jvm_gQ722pFm2a4OWvJDNVtkyQynFe4Gw@mail.gmail.com>
Subject: Re: [PATCH 1/3] brcmfmac: re-enable command decode in sdio_aos for
 BRCM 4354
To: Arend Van Spriel <arend.vanspriel@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_112741_908369_981E9666 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, YueHaibing <yuehaibing@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>, netdev <netdev@vger.kernel.org>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Double Lo <double.lo@cypress.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 brcm80211-dev-list.pdl@broadcom.com, Matthias Kaehlcke <mka@chromium.org>,
 Naveen Gupta <naveen.gupta@cypress.com>, Wright Feng <wright.feng@cypress.com>,
 brcm80211-dev-list@cypress.com, Kalle Valo <kvalo@codeaurora.org>,
 Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Mon, May 20, 2019 at 1:09 AM Arend Van Spriel
<arend.vanspriel@broadcom.com> wrote:
>
> On 5/18/2019 12:54 AM, Douglas Anderson wrote:
> > In commit 29f6589140a1 ("brcmfmac: disable command decode in
> > sdio_aos") we disabled something called "command decode in sdio_aos"
> > for a whole bunch of Broadcom SDIO WiFi parts.
> >
> > After that patch landed I find that my kernel log on
> > rk3288-veyron-minnie and rk3288-veyron-speedy is filled with:
> >    brcmfmac: brcmf_sdio_bus_sleep: error while changing bus sleep state -110
> >
> > This seems to happen every time the Broadcom WiFi transitions out of
> > sleep mode.  Reverting the part of the commit that affects the WiFi on
> > my boards fixes the problem for me, so that's what this patch does.
>
> This sounds very similar to the issue we had during integration of wifi
> on rk3288 chromebooks years ago.

I'm working on those same Chromebooks.  ;-)  I'm working on trying to
make them well on newer kernels.

...but I guess you're saying that the problem faced by the people who
wanted commit 29f6589140a1 ("brcmfmac: disable command decode in
sdio_aos") are similar to the problems we saw in the past on those
Chromebooks.  I'd tend to agree.  In general it's difficult to get a
SD Host Controller to be fully robust in the fact of any/all errors on
the bus.  While dw_mmc is pretty robust these days I'm assuming that
some other host controllers aren't.


> > Note that, in general, the justification in the original commit seemed
> > a little weak.  It looked like someone was testing on a SD card
> > controller that would sometimes die if there were CRC errors on the
> > bus.  This used to happen back in early days of dw_mmc (the controller
> > on my boards), but we fixed it.  Disabling a feature on all boards
> > just because one SD card controller is broken seems bad.  ...so
> > instead of just this patch possibly the right thing to do is to fully
> > revert the original commit.
>
> I am leaning towards a full revert, but let's wait for more background info.

I'd be fine with a full revert too.  Presumably that will break
someone but maybe they need to come up with a better solution?

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
