Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BBE12CB53
	for <lists+linux-rockchip@lfdr.de>; Mon, 30 Dec 2019 00:19:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4z4yDDcezW/IwC39q+BEuePYNYwEQ0JpxaAp4dcN47U=; b=DPj8twSU/E5f5+
	I23LVovAGs6sjBNqPHm3RSxdSkxR99A2Ax6oi14msO9Ge/iRUtFN20FTWzZ/6s9ey0T2iDxe4Y8iL
	WLWGoCwW69PZqEGhTtb49FcoI6pE2AhDLYHhII4moz6+NnPdc8hRRjEqqYMNfCOIIkXdzaSW4JByS
	wu58QsupIxoQ3RCd2n5U8EXwlg/wlJCTLnWuHUCnZjPIxlT1XFISkoPFC1dam0tRiYmKYzV/k1OOW
	NlRyuB9o8dioRI2CYCi09lWa9EgwJs4+PRbNjCCGbQA6UgJuIPi5jYNLM1JFhBg5X1tUyUebwLxQt
	7S7Fyo5cXhS+mTpU7p9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilhqM-0005EO-1C; Sun, 29 Dec 2019 23:19:30 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilhqI-0005Dn-EI; Sun, 29 Dec 2019 23:19:27 +0000
Received: by mail-ed1-x544.google.com with SMTP id f8so31284915edv.2;
 Sun, 29 Dec 2019 15:19:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XxSZstiEaMg+m65lDkW2E8KdL5f2Kpio4F4xfu4/sKE=;
 b=qEqcxGvrL6Xx0mQ/8Z3GHtEKOGcTeVvqVgOM2yp8DAnAgG0eVY8UHkYkhMS07BxKzY
 WqQXGPhS2yeWl3144e7q6YMX/2OJQ9VDtqy2K16OhSEm8Cx0elYHZlEEeJL060DazFvT
 vskiCsMN0M1sPeQSpUPBZNb/LILTYVqOKdfmj/3wCIXX6bcsFHh7fQicz3v4/CUVoAeM
 QjiDh5N+scPktd1DVSvLqHyyYn2nNMr9YZRXPnbQ+9JFpbj3LVgXrGntEW0846Qb28ex
 NU1dwyNKr4E/RoF919Qr3QM6N0DQvEA3nByGuaBvSldBPXa+StlqqGTxCTXW8mwpfLwO
 ec3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XxSZstiEaMg+m65lDkW2E8KdL5f2Kpio4F4xfu4/sKE=;
 b=H6XtyeJep5LsRNgpz+z29z9s6TCSGXGnFubsCHST0UQMvJalV+8U7azuRz7zVj/KZ2
 BLog9imkpVOYZApfv0R89OiZ6g5UCA2FxDuoOjBbaUMvTqnYakEdFWWzHczTdwMkiSAc
 kGMset8ll3kO2czvma8FJRORZ9C7w9EEn6CtyKBCvZRlOVfWOBagTT38jHLe4EGf7OQv
 0RQhAEOukgp/6mvcfAd01IEm+AE2spw82yEVNCYhJFHGs4VwvpP6PaMzW/+bRdYInE5w
 0feal/opffTtndUhdIEefdsQj4m/agcpRA1PF/QaMx8g2ChSAUXy0sE2+Yaz253heif+
 Pjeg==
X-Gm-Message-State: APjAAAUB0G9xDNV51p03kMOoEIU8INhbGNiozXun9a8BuzHhj9eHmFgI
 SZVP4s0RfpkPyUVLarOZ9dKdXrsU2amTHLflMc0=
X-Google-Smtp-Source: APXvYqx5hpszRc1esYWuJMYLxjiI1twZUv4Oyfi4w8d8PUEWWIYhTywMgOhwl9CLM8r56NOREovBKjh3zWBx5AgNoQ4=
X-Received: by 2002:a17:906:cc8b:: with SMTP id
 oq11mr67972062ejb.193.1577661561171; 
 Sun, 29 Dec 2019 15:19:21 -0800 (PST)
MIME-Version: 1.0
References: <20191227173707.20413-1-martin.blumenstingl@googlemail.com>
 <20191227173707.20413-2-martin.blumenstingl@googlemail.com>
 <dd38ff5c-6a14-bb6a-4df5-d706f99234e9@arm.com>
In-Reply-To: <dd38ff5c-6a14-bb6a-4df5-d706f99234e9@arm.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 30 Dec 2019 00:19:10 +0100
Message-ID: <CAFBinCDs3a8TJcQKgHUkDvssMR6Y2Kys38p50P0q=2KOiDTNHg@mail.gmail.com>
Subject: Re: [RFC v2 1/1] drm/lima: Add optional devfreq support
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_151926_509001_5D34BCD6 
X-CRM114-Status: GOOD (  19.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: robh@kernel.org, tomeu.vizoso@collabora.com, airlied@linux.ie,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 steven.price@arm.com, linux-rockchip@lists.infradead.org, wens@csie.org,
 yuq825@gmail.com, daniel@ffwll.ch, linux-amlogic@lists.infradead.org,
 alyssa.rosenzweig@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Robin,

On Sun, Dec 29, 2019 at 11:58 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Hi Martin,
>
> On 2019-12-27 5:37 pm, Martin Blumenstingl wrote:
> > Most platforms with a Mali-400 or Mali-450 GPU also have support for
> > changing the GPU clock frequency. Add devfreq support so the GPU clock
> > rate is updated based on the actual GPU usage when the
> > "operating-points-v2" property is present in the board.dts.
> >
> > The actual devfreq code is taken from panfrost_devfreq.c and modified so
> > it matches what the lima hardware needs:
> > - a call to dev_pm_opp_set_clkname() during initialization because there
> >    are two clocks on Mali-4x0 IPs. "core" is the one that actually clocks
> >    the GPU so we need to control it using devfreq.
> > - locking when reading or writing the devfreq statistics because (unlike
> >    than panfrost) we have multiple PP and GP IRQs which may finish jobs
> >    concurrently.
>
> I gave this a quick try on my RK3328, and the clock scaling indeed kicks
> in nicely on the glmark2 scenes that struggle, however something appears
> to be missing in terms of regulator association, as the appropriate OPP
> voltages aren't reflected in the GPU supply (fortunately the initial
> voltage seems close enough to that of the highest OPP not to cause major
> problems, on my box at least). With panfrost on RK3399 I do see the
> supply voltage scaling accordingly, but I don't know my way around
> devfreq well enough to know what matters in the difference :/
first of all: thank you for trying this out! :-)

does your kernel include commit 221bc77914cbcc ("drm/panfrost: Use
generic code for devfreq") for your panfrost test?
if I understand the devfreq API correct then I suspect with that
commit panfrost also won't change the voltage anymore.

this is probably due to a missing call to dev_pm_opp_set_regulators()
which is supposed to attach the regulator to the devfreq instance.
I didn't notice this yet because on Amlogic SoCs the voltage is the
same for all OPPs.

I'll debug this in the next days and send an updated patch (and drop
the RFC prefix if there are no more comments).


Regards
Martin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
