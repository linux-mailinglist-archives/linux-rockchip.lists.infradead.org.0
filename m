Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D481248CC
	for <lists+linux-rockchip@lfdr.de>; Wed, 18 Dec 2019 14:55:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MtYTryxP0i1W8pqaiRTLYU88jD0UiMHa6TwCNOEocBg=; b=bhtQP2WOXAwP3Y
	OfEKx7X9u0FH/pIFWKlf9dd/JYg02n1ux3uDdfIJQpiKHbuSELRuXPIn2V7Ck7vHqP6F2wo71Y5F7
	W/VjWQSB2Cu1IdNRURI2pKCW9D5MXQ/EaMuxCj3Rol/dSOyTgNY9nnEjezTn4ehAUbLIdiAFphbkL
	45YuxFow84C/NYrSS20S6N3Bi+zQuDpUP2WBd+goVVSUmVzFdwIhlU7uKnvjxpDzBI8RAk3pTWFcX
	hWOyHpObV2nKilPhFwh0I8q0GwJeokoP0Yy4AC4pp3MFJjAUv6fVmdlrasf61Lnws7ZIv8AkoiXmw
	WVuyNfCQQkunmXbjPyzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihZn2-0005WA-2h; Wed, 18 Dec 2019 13:55:00 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihZmy-0005Vq-BA
 for linux-rockchip@lists.infradead.org; Wed, 18 Dec 2019 13:54:57 +0000
Received: by mail-qk1-x742.google.com with SMTP id 21so1605744qky.4
 for <linux-rockchip@lists.infradead.org>; Wed, 18 Dec 2019 05:54:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=W6g1WCaxqmS8BjEZlrrmXiopqghnRyv3PpdjtEt2Huo=;
 b=KUkoNBVzKJalTahWQStb/hu6j0IK5VuOPT9sRyZ6WTYsgKvflwjwWrAyI3w6gjc+h8
 NG1iSZGRXuFv2DUKp+d0qnMLuFKzdH4XN9LHHG+UuWM1DZQEKMNdkHJd+5PEgj6RNAd1
 5mFuN9RhCnu8hhYmlrxQNgS1TF6YImzakh619fBe1MJBbiWnf5AElPiDf5Lr6Dk15r+T
 Jp0A4/Vu8yGPUjkvpaYPbnU1xv1WB4yu7oMOF50Q79JkuJ+PP1qr2rtHKBMO5VGXRSRN
 h4spO33cUEeUdFU86RwlXk6dGPGUc8cbdyLWDOyvGqvpaI2Io0bn7kHBVYN0bLo6/myE
 zF7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=W6g1WCaxqmS8BjEZlrrmXiopqghnRyv3PpdjtEt2Huo=;
 b=spVuig0ZGNPhvGCoDGIPyRfTFxvLYFc2XnwgShZgh94RTD9WRpD2dIS0ixqRDVT+aP
 CTdEeeiUfSTYG8KSHvg0jntVoCpvtw4cdFtHdfBTQGCGZZd8bOIlSrQ6UZzXraPfHCAH
 VPPYXVR8NHw61et4p1S+xaJawnXnbMw9fIbswS52qOYrEaLLRc2e7Ja3B2wqYWArfcgO
 EweALne+1Gpap68FztDFN2/o4fTip/psKypC2g8KY2772CxRcTMBj/gUKDISHZYSuohh
 Y2atNQkipYXtNz8A/8jHlEFWbtdhVXSyfqx4Dbiw9Yh2O9CU0db6UHQO59PtayAKQUfK
 VmNQ==
X-Gm-Message-State: APjAAAXPcVhwRJhQcTlfMfRuHuuOWqUTvgh77Q65hy0UAigP50dbtFnO
 rVE+YxOQ8S3xJjtgypIus/WQKlvcVT59y8Oj9YI=
X-Google-Smtp-Source: APXvYqzpebGHA3ZaFkGnr3pCrTIm68a3frAPs5rllurSeHe62AFDyHjAcDzw+lircuh0rtJ7cQj6NYx8jae/tXi6UFg=
X-Received: by 2002:a05:620a:143b:: with SMTP id
 k27mr2512703qkj.262.1576677294559; 
 Wed, 18 Dec 2019 05:54:54 -0800 (PST)
MIME-Version: 1.0
References: <CAMdYzYpHxMELdB4HzsViFvrLcDzG0A4000PJU6wHTaq4V9c1Nw@mail.gmail.com>
 <CAMdYzYo6HG+NK2BHNaULtD=Lu=Ozd6pFW4YRXF8QF_UGLjJN_w@mail.gmail.com>
 <E3092315-8D1F-4A43-B485-02D526F57B21@gmail.com>
In-Reply-To: <E3092315-8D1F-4A43-B485-02D526F57B21@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 18 Dec 2019 08:54:37 -0500
Message-ID: <CAMdYzYordu8S4S9nT=af4SeuLq-nvUT12XN9TgE=EbSYo4=81A@mail.gmail.com>
Subject: Re: [RFC] Permanent Fix for RK33 gmac 1500 mtu bug
To: Hugh Cole-Baker <sigmaris@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_055456_380234_FCC1FCD1 
X-CRM114-Status: GOOD (  21.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, Dec 14, 2019 at 9:30 AM Hugh Cole-Baker <sigmaris@gmail.com> wrote:
>
> Hi Peter,
>
> > On 13 Dec 2019, at 12:48, Peter Geis <pgwipeout@gmail.com> wrote:
> >
> > On Thu, Dec 12, 2019 at 8:21 AM Peter Geis <pgwipeout@gmail.com> wrote:
> >>
> >> Good Morning,
> >>
> >> So I've continued work on fixing the rk3328/rk3399 gmac mtu tx coe offload bug.
> >> I've found two fixes that maintain full performance and work consistently.
> >>
> >> First, is ayufan's tx coe patch [0], which takes the bugged_jumbo
> >> concept introduced in [1] and applies it to 1498 and above, vice 1500
> >> and above.
> >>
> >> The only downside is this disables tx coe for full size packets, which
> >> has a negligible performance impact in my testing.
> >>
> >> The other option I've found that reliably works is bringing the mtu
> >> down to 1498.
> >> This allows tx coe to remain enabled, but with the downside of total
> >> loss of jumbo frames.
> >> The reduction in size has a negligible performance impact in my testing.
> >
> > Shortly after sending this I discovered that setting the mtu lower is
> > not sufficient in some corner cases.
> > I managed to make offload break even at a 1496 mtu by `apt install
> > kubuntu-desktop` over ssh on a gigabit internet connection.
> >
> > After porting ayufan's patch the issue went away.
> > So unless we can fix this by axi tuning, his patch seems to be the
> > most viable option.
> >
>
> Have you tried suggestions from Jose in https://lkml.org/lkml/2019/4/1/1382?
> I've added "snps,no-pbl-x8;" and "snps,txpbl = <0x20>;" to the
> gmac in the DT, on rk3399-rockpro64. This seems to fix the slow performance
> on IPv6 specifically that I was seeing.
>
> I haven't done exhaustive testing beyond a few runs of iperf3, which seem
> to show OK performance for a gigabit link on home networking hardware.
> 874 Mbits/sec for IPv4, 856 Mbits/sec for IPv6, with MTU 1500.

I'll test this out as well.
Unfortunately I didn't catch that reducing the mtu size would break
under heavy load because I was using iperf3 to test.
It wasn't until I did a massive apt upgrade over ssh did it trigger.

I don't experience any difference between ipv4 and ipv6, both work equally well.
With ayufan's selective coe offload disable patch, I'm hitting about
960Mbits/sec on iperf3.

For clarification sake, this is on 5.4.
>
> >>
> >>
> >> I have also discovered that the rockchip implementation of the stmmac
> >> driver does not process flags such as max-frame-size.
> >>
> >> A third option, which I haven't explored because I don't know enough
> >> about how it works, is possibly tuning the axi settings, via the
> >> snps,axi-config and snps,mtl-tx-config handles.
> >> I don't know if this is feasible, but since tuning the dma settings
> >> affects the rk3328 I have hope.
> >> I do know that my current fix for the rk3328 does not provide full
> >> performance and does not work at all on the rk3399.
> >>
> >> Thoughts?
> >>
> >> [0] https://github.com/ayufan-rock64/linux-kernel/commit/8a41c672dd77e48b06c1b2dec3aa9db4bad30b49#diff-c897c0b53bd633240f4b12c4d29a5ff1
> >> [1] https://github.com/torvalds/linux/commit/ebbb293f8b3021ae2009fcb7cb3b8a52fb5fd06a
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
