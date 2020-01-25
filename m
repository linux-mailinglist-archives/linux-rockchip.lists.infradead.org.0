Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C737F14983B
	for <lists+linux-rockchip@lfdr.de>; Sun, 26 Jan 2020 00:25:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EY8M3t/ELbx0hgb+5Y9ojllZG5PxMqP6wnneoNIarNs=; b=qJGMDjo32VIF8N
	Ak1rHSSPPwQJD/1FrqI0+1uC2RaR+Usnvtaspgticor8bEz2pyeC96OdodmksjBCGBBPWTc+bOwQm
	cZYEAGx1aCsM+pNbS3KsA53nihUk+HGbb0hNkEOgY1hG5c86LTI74YGAZ3H0ii7hJVLfiTXMNT88F
	FiwINVbqe3iKAxYhwaPZmmp79PkIQo9kUGEJrBXAzyrNoIJXFzIV0euDjF8KlC2xlvtkj3Xoq/dkW
	2oFtTM15qsZOveJKfVEPQ6BgEsljrPkOYKVYo4iSsI4EnYSDvSRUn4a8ynJ2BlnK35ILmH/aSbciA
	p8F+gvse9fKpSY4GOl9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivUne-0000KR-4l; Sat, 25 Jan 2020 23:25:10 +0000
Received: from server126-2.web-hosting.com ([198.54.126.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivUna-0008CI-Fk
 for linux-rockchip@lists.infradead.org; Sat, 25 Jan 2020 23:25:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=westerntelegraphic.net; s=default; h=Content-Transfer-Encoding:Content-Type
 :MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fy1FY0HBukaq+WaJA8Bn2npOrY0Tn7HMCTDCS7flfvI=; b=N/2ZfL0HZ83O2rEswgeZnGi1jZ
 hWAAYC8gzIhdQSLh/zIfW+mNy0/ZuYyuMzHi/2lGIYAEcxGl47fZROZWQpM0gGM39eYedg0S5zprJ
 l5V0GZUkqUh8KvSM/7ciguSLPYx2lnWCIQL7PwutrzJYgZyZsxetDBgupFV/s9p5BVnObaLSneFM+
 Ss2oyD+P9IiXhTmE4rmkLbdbaLajv2dNUMB+PoDqpzsAFRzKn0k5DSQ2KXlaYs1C02ajD4Xp9SKFe
 TO4HJcOShUgBailThhHnJf5+VSOwL7bgKb96abzyOGqY8loO06Ax1K6NYzkyxmhmi9NZN87zemKbq
 /MR0VfTQ==;
Received: from cpe-98-151-158-107.hawaii.res.rr.com ([98.151.158.107]:46992
 helo=kleene) by server126.web-hosting.com with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <adam@westerntelegraphic.net>) id 1ivUnL-0018S8-2u
 for linux-rockchip@lists.infradead.org; Sat, 25 Jan 2020 18:24:55 -0500
Date: Sat, 25 Jan 2020 13:24:47 -1000
From: Adam Joseph <adam@westerntelegraphic.net>
To: linux-rockchip@lists.infradead.org
Subject: [Question] rk3399-gru-kevin post-kexec() severe screen flickering
Message-ID: <20200125132447.48f01721@kleene>
Organization: Western Telegraphic Corporation
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - server126.web-hosting.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - westerntelegraphic.net
X-Get-Message-Sender-Via: server126.web-hosting.com: authenticated_id:
 westmjlc/from_h
X-Authenticated-Sender: server126.web-hosting.com: adam@westerntelegraphic.net
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-From-Rewrite: unmodified, already matched
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_152506_642182_3804AB30 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.54.126.166 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello all,

My daily driver is a linux on a Samsung XE513 aka "Chromebook Plus"
aka rk3399-gru-kevin, using coreboot (loaded from SPI NOR) with a
hardwired linux kernel FIT image compiled into the coreboot.rom.
I'm moving towards this "burned-in" kernel being merely a first-stage
bootloader that loads the real kernel from non-eeprom storage, checks
its hash, and then kexec()'s it.

I've managed to get this working; the magic incantation is to add
"irqchip.gicv3_nolpi=1" for the first-stage kernel, and pull this
patch when compiling it:

  https://lore.kernel.org/patchwork/cover/933456/

This works great, except that after loading the second kernel the
screen flickers very badly and continuously.  The flicker is
especially bad if I use the touchscreen.  This doesn't happen if the
exact same "second kernel" image is booted directly out of NOR flash
by coreboot.  Is there some way to totally power down the touchscreen
digitizer, and if so would that help?  I could live without the
touchscreen if I had to.  Can cut PCB traces if necessary.

I noticed that eballetbo (to whom I am eternally grateful for all the
work he does to make mainline linux on gru-kevin possible) came across
the same problem, as documented here:

  https://freenode.irclog.whitequark.org/linux-rockchip/2018-11-20#23524255

Has there been any more progress on this?  If not, can anybody get me
pointed in the right direction to try to fix this myself?

I'm guessing the "clocks" here refer to PLL registers -- VCO taps,
dividers, etc.  I'm very familiar with that sort of stuff from the
FPGA world, although the last time I did any kernel hacking was before
devicetrees were popular.  Is there some way to brute-force dump the
state of all the rk3399's clocking-related registers so I can diff the
results from a post-kexec() and pre-kexec() kernel?

I see a lot of comments from rockchip employees about flicker being
caused by the resident ATF code deciding to fiddle with the DRAM DVFS
settings outside of the vertical blanking interval; is this relevant?
For example:

  https://groups.google.com/a/chromium.org/d/msg/chromium-os-reviews/8SD-sEw5_-Y/uJaXssVqFQAJ

On a related note, is there any way to have the ATF code delete itself
from memory after returning control to the coreboot ramstage?  I went
many months without usable suspend-to-ram and invested an absurd
amount of time before discovering that the intricate dance needed to
get the ATF to agree to suspend the machine only works with certain
versions of special branches of the ATF code.  It was a pretty unhappy
experience, and at this point I don't see the post-boot resident
portion of the ATF adding positive value.  If I can just boot linux
in EL3-secure-world after the ATF has set up the DRAM timings that
would seem to be simpler.

Thanks for any pointers,

  - a

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
