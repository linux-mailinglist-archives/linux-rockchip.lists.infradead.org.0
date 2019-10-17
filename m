Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E86D4DB307
	for <lists+linux-rockchip@lfdr.de>; Thu, 17 Oct 2019 19:11:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i45fsuRiISxSgljUWWdWiKbET7Sm8yLSPrmH4JqfLRU=; b=YgZgqNFXtJi1nf
	jq4viaJ5iDhNqPM/jHoqubgLtgF6jmbm8iAvOfR2+jAtRt26wcD3jfX0CsxPqJEn47Qj2VFep5IT9
	NNBLLLSmDLqAlWf4ytP3ZQpugLlLAWs1Np/bJneWkhEc8yzQULvoIiAW+adDszKAR6k1kXHnHX7+0
	cvT9Yk/EyZk1dIdcCRhWlr3HS0x92dzc+jancCkCQw/EF8EIzX34s0itaGXQCLzx3u8mmmIBPz/QR
	Hu29m8tBbwgFO/Nile263UDZF9VSsi1yim3Mv/Ez8qAFXkeJxPIWsymBivkEoxIbqsqGhhqp40fwX
	w9kOAqz1asafwcYgXq+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL9JO-0006xH-N2; Thu, 17 Oct 2019 17:11:42 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL9JL-0006wf-J1
 for linux-rockchip@lists.infradead.org; Thu, 17 Oct 2019 17:11:41 +0000
Received: by mail-qk1-x743.google.com with SMTP id e66so2534517qkf.13
 for <linux-rockchip@lists.infradead.org>; Thu, 17 Oct 2019 10:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q3dVxckwIEesqp92aeQQ9yPu3mtyFkIhD0Qd2dNLCEk=;
 b=uH5Tm/RqPpgqXcCqXDym+fNh+RZxVVtn8lsbzIj8MSUMnVmP1DZ2fjbQD4KSsyd2FW
 ve1bf6f3lnMRRskF6usRYFwBxnBsMrcuxVQM/V5ZsdQHTmpe0QL1g2AdPUQQTnGtyhWY
 jmc+5OJRMHirkIX57YVlM/4O6BNP8gECokOccHS8IJNghfX6PcOdH8CS+rHqq4B7Dmd6
 Pw6Yoa28G33Dl+IpgQnpoiDI+aPHdIMlGgJtPFEqWy7vY4eTCGPXLeoBEE5ytx/2NFvA
 aKkgEQxoG53c3cu5mX6fKtR8bsjAqQyxPkLzdpY9L8vjVnSDm4Y7iJ3/JKePFUJAMu9a
 MIYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q3dVxckwIEesqp92aeQQ9yPu3mtyFkIhD0Qd2dNLCEk=;
 b=CunC53BU6y5KXL8LYUuSI5g40UEh23iW1JZecRwGeLcLFH4ZDUyhJtWQ+LL2jbh9nL
 hq2hhmFV1dkfpgucUiba0E3yq8xz6c1AZOO1PyM4bIuYe8fIkdl5QC12V6HmePXiqFy1
 Pqwvssdu2ypC1XJaPX/9dDxHWXvrrvPP6JZUARtYE55ipwDcZ5euRslRW47IbQ2mb+Ov
 BGsrFp81nAlou5QRTLJC9aQ3xltWSzk65hMuj12CpnLZoZFy5fBCQ+gwlD0wOshXbi+z
 LdvzfcnOkJAvhiI9iYusH3D/wQIoPzlocS3zC848iH2TFf8J7xlO4DuAhEPL7neUP7vc
 GyLw==
X-Gm-Message-State: APjAAAXnSEx1stugxCAkEOBXHoJAudI81cxuk2PcD8Maj9vt4sR8yqLK
 L5MFACsYqCPmMB91tOnp2j59MJexHRjpHxcUXEw=
X-Google-Smtp-Source: APXvYqxMLniiO3ypXchS2Oif6cgvITLsazbQBTN/n0ZjUb3HIXAya+2xBg92blhqohgH2Xh6Rmc/UDl6yjIzecQbJcQ=
X-Received: by 2002:a37:bd02:: with SMTP id n2mr4430903qkf.497.1571332292452; 
 Thu, 17 Oct 2019 10:11:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAMdYzYp9xdtb6eiUs-Tiq4jJ-jr31LTzng2o-qAbOfu_63zXVg@mail.gmail.com>
 <65610976-8cb9-c0cd-d4a7-b8951b836fd7@arm.com>
In-Reply-To: <65610976-8cb9-c0cd-d4a7-b8951b836fd7@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 17 Oct 2019 13:11:20 -0400
Message-ID: <CAMdYzYomC-2zg6J68Y6wPyZxfkd7N5aOEbPTmQfMie596QVZRA@mail.gmail.com>
Subject: Re: rk3328 USB3 controller
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_101139_627856_D815D9D2 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 12:35 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 16/10/2019 19:54, Peter Geis wrote:
> > Good Afternoon,
> >
> > Is there a particular reason why the USB3 controller on the rk3328 has
> > not been enabled?
> > It's enabled on the TeamFirefly source [0].
> > I pulled it in to my device tree and have been using a USB3 SSD as my
> > boot device for over a year now.
>
> IIRC, the issue is that it's effectively *only* usable for a boot device
> (or possibly with a fixed hub), since without the phy driver, as soon as
> the initial device is unplugged the controller can no longer detect
> anything being plugged in again.
>
> Robin.

Well that's the behavior I was seeing, but I've just pulled the driver
in and with very little tweaking it builds and loads fine.
Need to conduct usability testing but it should be good to go.

>
> >
> > If I were to submit the patch, would y'all be open to pulling it in?
> >
> > [0] https://github.com/FireflyTeam/kernel/blob/roc-rk3328-cc/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
