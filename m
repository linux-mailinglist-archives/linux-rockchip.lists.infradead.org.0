Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B20211F209
	for <lists+linux-rockchip@lfdr.de>; Sat, 14 Dec 2019 15:31:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GEH5I/QMp+efy+Rjofsz+NmMakEu9wXpAT5a7ppuUzw=; b=r2XgOv9R7gnySC
	tF8FnIMe05k2hZuVL0bcGXSg3OLM03jJl1WjKlW0szWrCFLyn9hr3qGEl3PyxLncWGrdwWFFkqW/X
	dwKzuIEt49sdpxvihkdzouhGU8M/aeGuP9vptunYYYTrDH3h64XIWzCrwLKnlwxR79k2xZg81e0UO
	CXj0lCiOM4Kb8O27j3lR/zOuMUgBzfdXRT2c6/v/CEbVQL9Fok8T6F4kJiD5eIn3YcFC9TfUGVzqS
	flT5oEfC/oHHboKSfDSg6aV0QYNOsZ80gCY5Dbz2fG8ac29zVkc2z4ckJgHC4tvcMECubwA5wAU5z
	hGyGdxoGfjXXCIswcE5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ig8Rg-0002qW-L3; Sat, 14 Dec 2019 14:31:00 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ig8Rc-0002py-9m
 for linux-rockchip@lists.infradead.org; Sat, 14 Dec 2019 14:30:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id f4so1498541wmj.1
 for <linux-rockchip@lists.infradead.org>; Sat, 14 Dec 2019 06:30:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=EsBHkS5OunME09EdADsJcqw1iqNBCf/uxN0yt7oQz44=;
 b=FLJQB5QmJbcutzUJzrF4TSzZtSGGjE4D4UY06E21T61JMPYeZjsrnOuleuNmFjUttQ
 9K39dxc8GQGJBglvjJA33MJbjLa3k1JCHjzhqZxAwuTmSFhl9pPeMY+MwRlMHMcLGv9h
 MP1aSmU/2FLxV+tulPRIGwNzHqNXN0yFe0qmfogmCtl/xvRGVgQdOadhu7jK+GIdmYYk
 SIRbml7Xh+lWyg6dB5AIUMqWrCSlsY9lACmbb1FNf2pLiN9CuyzC/Y43RQRSOxDK2rS/
 l5/OcEZlNEor08dRD7S7tWB9aupSZp9K1SUvvjNNrkkx5QlgVKIELF5XXH2aMfMC2dRY
 vssg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=EsBHkS5OunME09EdADsJcqw1iqNBCf/uxN0yt7oQz44=;
 b=Z/bZRRyz+/MKNn/T0pPdv0eN9jrhcYNLSt9WwvF2SiTGhp2VXG0/zuwiBxStyqriMv
 XcsQewf4EV0CtD5fFc5P8AWLgWtOl61mTerEDiYHBrKLR4ltZBhnWCj7yYWGglqfsyQG
 4ZBPNkStxq5/nDWS/G0RD6dwERjDJv2LfqDBRsvQRxi9juXV468ZtReCpZ42VrQOoNXd
 eeJKpRXcwxnYskydA+h6J9puKJQV1V7qA/sJvV5s841esh1mPWnvMv/OmE+RDJkx+oAq
 V+Hg6bw3tAa0adqrHLGVVfiWlmZzXhAxk9xMDeHR08rd6SKnHVhvrJ0CSPCyO6Lrhv16
 0zBg==
X-Gm-Message-State: APjAAAXXHDrOOHqML6hEptkyEcIo1IuET4NqLVuWva7TPNumFeIdJL60
 9wxuE5L9dNY8mcrXqGp8CQ0=
X-Google-Smtp-Source: APXvYqzx0JksAsQQ97DQqEb2sLqwf6uTosItYFSeWnv0S8zv0aUgRIDohyYm5HSjcz7D371pzxAoLw==
X-Received: by 2002:a1c:4e10:: with SMTP id g16mr19412260wmh.94.1576333852103; 
 Sat, 14 Dec 2019 06:30:52 -0800 (PST)
Received: from apple.sigmaris.info (ebrouter.sigmaris.info. [82.69.107.165])
 by smtp.gmail.com with ESMTPSA id x11sm14580451wre.68.2019.12.14.06.30.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Dec 2019 06:30:51 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [RFC] Permanent Fix for RK33 gmac 1500 mtu bug
From: Hugh Cole-Baker <sigmaris@gmail.com>
In-Reply-To: <CAMdYzYo6HG+NK2BHNaULtD=Lu=Ozd6pFW4YRXF8QF_UGLjJN_w@mail.gmail.com>
Date: Sat, 14 Dec 2019 14:30:50 +0000
Message-Id: <E3092315-8D1F-4A43-B485-02D526F57B21@gmail.com>
References: <CAMdYzYpHxMELdB4HzsViFvrLcDzG0A4000PJU6wHTaq4V9c1Nw@mail.gmail.com>
 <CAMdYzYo6HG+NK2BHNaULtD=Lu=Ozd6pFW4YRXF8QF_UGLjJN_w@mail.gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_063056_365594_0E85CECF 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sigmaris[at]gmail.com)
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Peter,

> On 13 Dec 2019, at 12:48, Peter Geis <pgwipeout@gmail.com> wrote:
> 
> On Thu, Dec 12, 2019 at 8:21 AM Peter Geis <pgwipeout@gmail.com> wrote:
>> 
>> Good Morning,
>> 
>> So I've continued work on fixing the rk3328/rk3399 gmac mtu tx coe offload bug.
>> I've found two fixes that maintain full performance and work consistently.
>> 
>> First, is ayufan's tx coe patch [0], which takes the bugged_jumbo
>> concept introduced in [1] and applies it to 1498 and above, vice 1500
>> and above.
>> 
>> The only downside is this disables tx coe for full size packets, which
>> has a negligible performance impact in my testing.
>> 
>> The other option I've found that reliably works is bringing the mtu
>> down to 1498.
>> This allows tx coe to remain enabled, but with the downside of total
>> loss of jumbo frames.
>> The reduction in size has a negligible performance impact in my testing.
> 
> Shortly after sending this I discovered that setting the mtu lower is
> not sufficient in some corner cases.
> I managed to make offload break even at a 1496 mtu by `apt install
> kubuntu-desktop` over ssh on a gigabit internet connection.
> 
> After porting ayufan's patch the issue went away.
> So unless we can fix this by axi tuning, his patch seems to be the
> most viable option.
> 

Have you tried suggestions from Jose in https://lkml.org/lkml/2019/4/1/1382?
I've added "snps,no-pbl-x8;" and "snps,txpbl = <0x20>;" to the
gmac in the DT, on rk3399-rockpro64. This seems to fix the slow performance
on IPv6 specifically that I was seeing.

I haven't done exhaustive testing beyond a few runs of iperf3, which seem
to show OK performance for a gigabit link on home networking hardware.
874 Mbits/sec for IPv4, 856 Mbits/sec for IPv6, with MTU 1500.

>> 
>> 
>> I have also discovered that the rockchip implementation of the stmmac
>> driver does not process flags such as max-frame-size.
>> 
>> A third option, which I haven't explored because I don't know enough
>> about how it works, is possibly tuning the axi settings, via the
>> snps,axi-config and snps,mtl-tx-config handles.
>> I don't know if this is feasible, but since tuning the dma settings
>> affects the rk3328 I have hope.
>> I do know that my current fix for the rk3328 does not provide full
>> performance and does not work at all on the rk3399.
>> 
>> Thoughts?
>> 
>> [0] https://github.com/ayufan-rock64/linux-kernel/commit/8a41c672dd77e48b06c1b2dec3aa9db4bad30b49#diff-c897c0b53bd633240f4b12c4d29a5ff1
>> [1] https://github.com/torvalds/linux/commit/ebbb293f8b3021ae2009fcb7cb3b8a52fb5fd06a
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
