Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B64EE3986E
	for <lists+linux-rockchip@lfdr.de>; Sat,  8 Jun 2019 00:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4q8+I3kDoo8AiC0LJc6LMyHLoAZub8U4ubG7NFEf144=; b=YPxvXeL1LzT/YX
	GPo3TDh/D4UEGcv9VbmBY/WxQfWDhOJCGmCodL83Y1Z7o81mMOROJDPttSzB3OyyyQM6esVgmfn4W
	AAa8btGIIp/VhzbiAOx3zCdXkyheBwP4NsJXr1QN3f3755MuSTLI1ueUYDUaekTIiW+ldpthKy5+8
	fvbELTXdG+026P9X2OLNhF5QSsJ6Q4FmXaNxjlL5oFt5xUZZdHHb5XDam+v42FtdgF+6+sTFoETgH
	3+3UbeCBxcODhQoTzxxKUlRCyPo+fPKbL3yDru3BzEQtGqUdQxfAJNG9rb9NXNtjtTatkKrLVLCmw
	mMiJCwwvDXZhHxvBpCFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZNBz-0005Wj-8T; Fri, 07 Jun 2019 22:18:35 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZNBw-0005VZ-LE
 for linux-rockchip@lists.infradead.org; Fri, 07 Jun 2019 22:18:33 +0000
Received: by mail-lj1-x243.google.com with SMTP id o13so3020190lji.5
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Jun 2019 15:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gldb3yKNAdLFuCuMW3i8lSkcWD9AeAuQqWMCJcjMt1w=;
 b=G9jAqm4GrJw44aseApNTMp1ZjQ/aMJNeUyiv8kQagv/gNhX33BEX/CzFFfoO08fSPB
 FIRt58LdAq424pNBetPm0eg6QkNKMjoFW09a34suTKYEqckDAocINkl4cJNxDodCE96C
 HhxaX0N2dtDsMgQTRenOa3Zz57TDPLOznIac0ahpARr0gBzRph6O+fMw7xfyM5gNCyc4
 ZEwFIOTj8bRtPvpJ/TJwP+iooxqBStOJPX265Lu/PgJ4qiYq+EqEOfo3dHGcStjFlqV7
 i7GxnfE3GpXg8kAr9/410RMqCH8UFTsX34P3RGCzpBMeWL/RtxobGuc1DPYjYqXccE1K
 XzbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gldb3yKNAdLFuCuMW3i8lSkcWD9AeAuQqWMCJcjMt1w=;
 b=sGBKUvzI2c4iGiWOA2+Xm933w3rsxXD4l+9oDwWs58WWjHEPQxmolmpOnnICsIvsiN
 oVEOE8SkWzIcDTtDRc1CRl8LvwnCDz9JfuE0lfjbL7d92ALLobGowXIKJcQ+uDm0DTS1
 sBevMG2j/eKTR7nxljWU/G1vb5IkVt1tB4Q9NNr8mB2c7KMC+H+Eoff3gCmTaOmjPJDC
 LHP6FICAqK3BwStsd26Zi30gMDNFUnpob3w9h3sEZlALLHbca0Od8e91ldyFWM6GeG8Z
 4MaTabItNJ9E5L869Icj5p2ZnfyRm67NsO/YhSHIptRn5BWOHGeIWNChS+zbAQvJ2Aek
 EeSg==
X-Gm-Message-State: APjAAAURhBq1EqhV8bRrCC+DAxjyXsGvBeuAD/jAur1k+GyGcsX6XuIg
 czAaiMMhnLHBUfhpzQcOXSelTGLIrg953uUwc3oGCQ==
X-Google-Smtp-Source: APXvYqxOTBAeYX+u/Eh9xZoqx5z1jjeiP4aVzSBSOMzDg0FyT03H0TfU69azZbe7G7oS0gd/G5TcR0QxubMS3IbiYDI=
X-Received: by 2002:a2e:5dc4:: with SMTP id v65mr20370501lje.138.1559945908563; 
 Fri, 07 Jun 2019 15:18:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190604165802.7338-1-daniel.lezcano@linaro.org>
 <20190604165802.7338-2-daniel.lezcano@linaro.org>
In-Reply-To: <20190604165802.7338-2-daniel.lezcano@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 8 Jun 2019 00:18:20 +0200
Message-ID: <CACRpkdazSvjt0G58dQOr=cw6mJTptNd3ZmEXduXVh4=01YHNvQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Define values for the IPA
 governor for rock960
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_151832_695939_36D8DDEF 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 6:58 PM Daniel Lezcano <daniel.lezcano@linaro.org> wrote:

> The intelligent power allocator PID coefficient to be set in sysfs
> are:
>
>     k_d: 0
>     k_po: 79
>     k_i: 10
>     k_pu: 50

With all the other interesting parametrization in the device tree
I kind of wonder why the PID regulator constants defaults are
not set up from device tree?

Any specific reason?

To me it seems like the kind of stuff userpace will invariably just
get wrong or forget about (somebody just runs a different
distribution without the extra magic to set sysfs right) unless
we supply good defaults.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
