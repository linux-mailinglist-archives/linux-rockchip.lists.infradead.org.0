Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5FD464E5
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 18:47:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++Cuf+5zBXMCVsC/uFkUX8Q09TFlkVNdqHpOwIDZS/0=; b=s2xKedvXHuVU1+
	jIRo2YGRJrC+MeUuJzYKWyfUx2PomCWPPJl1PpWbOSGcUNrNz2E6mcjxQTKGjoGIxyELy+6GmgKyZ
	toL4TRWgJDVqWRnSBfk89YNbaEtkXzCC+mwpJIEQHdycSecdhf+CMSpkRrLQCSQV5VFORT3MZdaxX
	xFQmj9d9atsdsVHdTJhczlVDLrZt+/DoYGStZynzs7Ht0mtelqSMbknbIYk95bE5QKvaTjvNIQHhs
	XltKEW7nhyskZFidJAEkiisQmmch+fX3kK7WZmEOcqzhtOyQOyQQu+FP8ctnhF6TNM82+r5A8ZtgP
	EWSebL8TMn40JHltW3qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpM4-0004RL-6E; Fri, 14 Jun 2019 16:47:08 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpJo-0000Xt-Jg
 for linux-rockchip@lists.infradead.org; Fri, 14 Jun 2019 16:44:50 +0000
Received: by mail-vk1-xa42.google.com with SMTP id o19so657939vkb.6
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2019 09:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TdEh8Hj2Clq+kDMcSVX4CedsJJo6mgn0qth+pnhpxfk=;
 b=MPl9AGMjmoNFxoC+q/LqmrAuv03V+OnvpDb1T2jOEFfQr1ybdUYboQYZPsQk7BPBH5
 wpwjgQmzEr+uSKzyd5eykA2lnqJFEWo4AqFqsNv+kwS/HoGFi3WWX5tU1iHIzcRPsiF5
 ERXHdmkt3SQzDx2AtHIxbcJeIEQ0DyJvFUU/U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TdEh8Hj2Clq+kDMcSVX4CedsJJo6mgn0qth+pnhpxfk=;
 b=mPDYdwGr8BLAXGvQNvnTUNMVArToyOsYNVfA6ovVbuMrMmK++ycOO1krrPdTuMLSR2
 n2B/L40MoMg55W714L+0V/gsJjAHI81z14P0QLiNHgO/SXjbYzzFGa7M4fw1tEMmmbqw
 fwMbeA4kEo4jMo8YZL7i03Eu2fXAOniJj/1HTX+6vqeSLkXmiG7qtpHE1PCcarwGFi4C
 g47x+uY4PsbMzsBZkO7ZelO1dalrvMrSoTyDwjzgO1Dy17lXk7UrHdQ8OQ1lXeCtfOQg
 3mR8hrHGkxQAmQXB9zQ6hl+rfhhLe37mpWoTrstFkHmcsBifvk1vadrwvIyE+PwGz50m
 eRiA==
X-Gm-Message-State: APjAAAUNHfVAEAgVjI37ZNyOiDda0ArTbB5/m4IeZ9J83lo5iPvgguph
 Ijq+fNQ+hO4poMTf468TQ0extfn9yg0=
X-Google-Smtp-Source: APXvYqzw2OOFQs+xsWQGUBs9eXJ5wVOyepsg/dfBiwZqZGusViJnIVOV5IalPBPtop9rtdC1pCbxgw==
X-Received: by 2002:a1f:84d5:: with SMTP id g204mr9713278vkd.44.1560530686196; 
 Fri, 14 Jun 2019 09:44:46 -0700 (PDT)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com.
 [209.85.222.46])
 by smtp.gmail.com with ESMTPSA id 66sm1715499vko.27.2019.06.14.09.44.46
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 09:44:46 -0700 (PDT)
Received: by mail-ua1-f46.google.com with SMTP id o2so1119518uae.10
 for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2019 09:44:46 -0700 (PDT)
X-Received: by 2002:ab0:2a49:: with SMTP id p9mr2181727uar.0.1560530327904;
 Fri, 14 Jun 2019 09:38:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190613234153.59309-1-dianders@chromium.org>
 <20190613234153.59309-5-dianders@chromium.org>
 <CAPDyKFrJ4+zn7Ak0tYHkBfXUtH3N7erb5R7Q+hgugchZmCRGrw@mail.gmail.com>
In-Reply-To: <CAPDyKFrJ4+zn7Ak0tYHkBfXUtH3N7erb5R7Q+hgugchZmCRGrw@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 14 Jun 2019 09:38:26 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wuj=gANR2im_o4ZnoLEB+U6FqzKe4noLdQyi1vw+K2xw@mail.gmail.com>
Message-ID: <CAD=FV=Wuj=gANR2im_o4ZnoLEB+U6FqzKe4noLdQyi1vw+K2xw@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] mmc: core: Add sdio_retune_hold_now() and
 sdio_retune_release()
To: Ulf Hansson <ulf.hansson@linaro.org>,
 Arend van Spriel <arend.vanspriel@broadcom.com>, 
 Adrian Hunter <adrian.hunter@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_094448_770284_06936B8B 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Madhan Mohan R <madhanmohan.r@cypress.com>,
 brcm80211-dev-list.pdl@broadcom.com, Avri Altman <avri.altman@wdc.com>,
 netdev <netdev@vger.kernel.org>, Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 Brian Norris <briannorris@chromium.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Double Lo <double.lo@cypress.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Naveen Gupta <naveen.gupta@cypress.com>,
 Wright Feng <wright.feng@cypress.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Fri, Jun 14, 2019 at 5:10 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Fri, 14 Jun 2019 at 01:42, Douglas Anderson <dianders@chromium.org> wrote:
> >
> > We want SDIO drivers to be able to temporarily stop retuning when the
> > driver knows that the SDIO card is not in a state where retuning will
> > work (maybe because the card is asleep).  We'll move the relevant
> > functions to a place where drivers can call them.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
>
> This looks good to me.
>
> BTW, seems like this series is best funneled via my mmc tree, no? In
> such case, I need acks for the brcmfmac driver patches.

For patch #1 I think it could just go in directly to the wireless
tree.  It should be fine to land the rest of the patches separately.

For patch #2 - #5 then what you say makes sense to me.  I suppose
you'd want at least a Reviewed-by from Arend and an Ack from Kalle on
the Broadcom patches?

I'd also suggest that we Cc stable explicitly when applying.  That's
easy for #2 and #3 since they have a Fixes tag.  For #4 and #5 I guess
the question is how far back to go.  Maybe Adrian has an opinion here
since I think he's the one who experienced these problems.


Thanks!
-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
