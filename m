Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 612FA9D73A
	for <lists+linux-rockchip@lfdr.de>; Mon, 26 Aug 2019 22:09:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUZKfeVW5DRCmfr2ZxDGJijzAgVvzSgnTGZkQnzIca8=; b=hyI0kd82O3eB2k
	tTUG6Qhx25I3f+vaBzPTwWXH1+nWCCO4x4RnopDcm7DJgOK+mdr/lJYb9i46Kk2F+fSGsi+2arBmn
	D0HogpGTXHCiEYM0WEQFJPofIfACoXNailZZCzNqtxUM4onPFW2pl/yHJeZgLZ9Ozgrtf2j061EUZ
	NDDgcnmEs6f4/DACe9wlLBs9TUpCaSUfDIz9imFaT8MwdtiX6yf+eywqRXA9pQFP4s37wekUccdWH
	q4jsLlhh49/Uvr1qc229gsU76HHX2h0H9fj+s4ZZKdKgAoZcq3LSCsWBdz+MVF+F3onQTqsXhlEAo
	KJDQEbmVZx2GQr05TcXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2LIe-0007Du-9a; Mon, 26 Aug 2019 20:09:12 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2LIa-0007DM-Gq
 for linux-rockchip@lists.infradead.org; Mon, 26 Aug 2019 20:09:10 +0000
Received: by mail-ot1-x332.google.com with SMTP id o101so16410889ota.8
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2019 13:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qia5T4Waq5fe1l2UBT4jS5kxaPfW8ZVyB5hnkeHcpMc=;
 b=M8QF0vTdt+3GC74h+AatYjhA9N8uGLceFtRMi+YYTaJOpZrdqsZRrcyY65dhsNRqiR
 YrK7Yi76ZlG2QK/q93zMSszHAkqGhmTui+WOqbWN/hyYWmulv3HOxKIClVEQF0Ed6+Ma
 IqxYjscFcKdBXXBs/V/Ymy6LsQe7d/OQobFL8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qia5T4Waq5fe1l2UBT4jS5kxaPfW8ZVyB5hnkeHcpMc=;
 b=e+4i3lhqRCBzLVM96ElvCu/lSMT2ybCtapN4oU6xa9SDuUw13HIvvqps20P0qDgE4W
 jeCXT0LXMPOfXW/JGou7HXwdYIjip5EvCIVUvO+Da1KkxY2dRUyDpz2qwH98++UClQLq
 xIaBQ1aISwaC/Q8CMZUJ4AHPf50G2wQK3sxIqPH/X32EMnfoM6vt012rUfxITmCYUIST
 SYvNftKcX4qVnBYcdHZpwd/MOpFaC1FIkVqYY2vYI8V2GPk677Tn4Y3Tv651nl2cO/UD
 PwFr2HTCaGHFzv/YQm7FI5Baunrgqlbo+RD55A2LedYlsQHaTLlWPnc2zE+oDonmGK3g
 1ArQ==
X-Gm-Message-State: APjAAAX8HGDjM5hNQFi2B5KrFKofC/ZXIcPYbDhBwn4S4zLaNheU+GCm
 3diWAMbEifi7BZ0nxLVJz26VLgm8rGA=
X-Google-Smtp-Source: APXvYqzJvz9e9Yv+9H1brMzyKv8NKwnOJymOYgidgGucC2oCQErRBSm+D77pse9tTgaZsxFEdO2SyQ==
X-Received: by 2002:a05:6830:130e:: with SMTP id
 p14mr17325931otq.339.1566850143634; 
 Mon, 26 Aug 2019 13:09:03 -0700 (PDT)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com.
 [209.85.210.41])
 by smtp.gmail.com with ESMTPSA id d66sm4484725otb.47.2019.08.26.13.09.01
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 26 Aug 2019 13:09:02 -0700 (PDT)
Received: by mail-ot1-f41.google.com with SMTP id m24so16408564otp.12
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2019 13:09:01 -0700 (PDT)
X-Received: by 2002:a05:6830:1e0f:: with SMTP id
 s15mr17839319otr.231.1566850141289; 
 Mon, 26 Aug 2019 13:09:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190824095446.ztcuounx5stnsven@alex-chromebook>
In-Reply-To: <20190824095446.ztcuounx5stnsven@alex-chromebook>
From: Alexandru M Stan <amstan@chromium.org>
Date: Mon, 26 Aug 2019 13:08:25 -0700
X-Gmail-Original-Message-ID: <CAHNYxRwKScOowbO5QFGbA_SibyqTds+X7hZ1zP4A-FuTEeqP1A@mail.gmail.com>
Message-ID: <CAHNYxRwKScOowbO5QFGbA_SibyqTds+X7hZ1zP4A-FuTEeqP1A@mail.gmail.com>
Subject: Re: Broken suspend/resume on RK3399-based Chromebook
To: Alex Dewar <alex.dewar90@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_130908_585198_E6B5FEB6 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:332 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello Alex,

On Sat, Aug 24, 2019 at 2:55 AM Alex Dewar <alex.dewar90@gmail.com> wrote:
> I've got an Asus Chromebook Flip C101PA, which is based on the Rockchip RK3399
> SoC, and it seems like suspend and resume is broken (AFAIK it's never worked).

Sounds about right. I don't think it ever worked.

It's possible there's still some patches missing from upstream. You
could check to see if there's anything suspect that's only in the
chromeos-4.4 kernel tree (which is what bob ships with) and was
forgotten to be upstreamed.
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-4.4

> When I try to suspend, the screen goes blank, but the power light stays on
> rather than flashing as it usually does when it suspends. The system then seems
> to be frozen.

The led blinking is dictated by the EC. And the EC knows the state of
the rk3399 because it's supposed to be outputting if it's in suspend
or not via the AP_EC_S3_S0_L pin.
You can follow along at home by looking at the firmware that's running
on the EC: https://chromium.googlesource.com/chromiumos/platform/ec/+/refs/heads/firmware-gru-8785.B
Areas of interest in this codebase: board/bob, power/rk3399.c
Not saying that there's anything wrong in the EC firmware, but it's a
sign that the rk3399 is not doing the right thing (at least in regards
to that gpio).

Another debugging tip:
You should get one of these: https://www.sparkfun.com/products/14746
It will let you get a serial console out of the rk3399, and you'll
also be able to see what the EC has to say about stuff.
How to use it: https://www.chromium.org/chromium-os/ccd

Please let us know if you find anything interesting,
Alexandru Stan (amstan)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
