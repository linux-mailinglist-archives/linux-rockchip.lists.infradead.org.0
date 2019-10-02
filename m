Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EFBC9446
	for <lists+linux-rockchip@lfdr.de>; Thu,  3 Oct 2019 00:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nsG2SiN59qjs19t2MxkZ8MT7gHwRVTz7JYFXJui6rBc=; b=H7fBZMUesn9WHs
	yB1i/Gnd472ykfl09Neun9ywaJWfhPFB1I2lb1ES5LrlW4JOzz09poP+Q+mZarTlFR6OlB1bylIPb
	4lCJoLMflx+ckrnu+ftvKKBNelg1ybL4a1/u6ol/IkNSH0GyXnMzRSBzmZ4Rkn3IIDajnNLrlNp/6
	dWWHVTlTcHyH7lUMUHPyzPZwjby+qfP/c38/euaRNX0AE9YeG3zP0pocTVw41yLoQwChlZzBu30U4
	aSIHzp4WKAE4Hw6xfeXLIgSn3m4vFsT7ERjZRyjYcesdJZbRhc1Bf8fesXbZbWKom5xZPx0msDQ/d
	+EPJMbPYQC5R15yqbPeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFn2a-0006pe-38; Wed, 02 Oct 2019 22:24:12 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFn2X-0006oq-0F
 for linux-rockchip@lists.infradead.org; Wed, 02 Oct 2019 22:24:10 +0000
Received: by mail-io1-xd43.google.com with SMTP id z19so1095763ior.0
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Oct 2019 15:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dwiBUbDvj+99or6CWyhr/vlA0vFW+3yf473QWcd1/1k=;
 b=f59VWKPlW77r+626KYZxJnyNLG8BD90K4VFBHcG//pORlzf8wYWqBnBNPHO2ECJzUx
 59RW7ke/ziFCIczsmf9wvmQmh3OvsYEzpXVjTQsFWWsGwqVLcVtvHi9uNsidKCMpxVyv
 +8+R1w9Ctas0Z9M9OzZEStDYOtX4T9Ohnh9r8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dwiBUbDvj+99or6CWyhr/vlA0vFW+3yf473QWcd1/1k=;
 b=Lj9awkl33NaT71yZ/sAWcy6xNUWA+KPlV5OHK8slbDHi+f4TcE4gd9BvXdIy0w05kb
 4qCPUTZYiIz3YuqWdPB48f6wBEx1Vblrvcxow3ce4bQw6pRiTEsWHxDA8cxPJEtkQn6+
 o764ovAOl0WUBlGhCqWoyTQI2axiYPTvstgixR3LGdWN1hvpww9BxaTlD7+dq7VDz0kv
 NnlzL6SdnB/Qh756xFkO0do1P0u5ZBbh8evnZg9O75B4NhrRDdC0YohB4+RcTUMYHDSN
 c45UJVcu3TR6xniRXkYqKIJIQAyzrvhohRF2msPfK8IitMbaJj9tBKD1umLzW7rlEGD6
 3x3w==
X-Gm-Message-State: APjAAAXzC5cZe+xeZKQ+vTV3ZblIigxDit5q7zzE+wzp5zt2rPYYnQk0
 CKdgraWflE1YvBOjkNjlkFT9gTWgTiA=
X-Google-Smtp-Source: APXvYqxFSm51xo5b6MDTHcxE621TvKn5rJFJIV7PDNvQo1eJhYu9lYZebs2t+Pv/iHDmDbjan3HoqQ==
X-Received: by 2002:a02:cc6e:: with SMTP id j14mr6583464jaq.130.1570055047320; 
 Wed, 02 Oct 2019 15:24:07 -0700 (PDT)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com.
 [209.85.166.48])
 by smtp.gmail.com with ESMTPSA id g79sm524384ilf.14.2019.10.02.15.24.06
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Oct 2019 15:24:06 -0700 (PDT)
Received: by mail-io1-f48.google.com with SMTP id c6so913012ioo.13
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Oct 2019 15:24:06 -0700 (PDT)
X-Received: by 2002:a92:844f:: with SMTP id l76mr6360533ild.218.1570055045845; 
 Wed, 02 Oct 2019 15:24:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191001160735.1.Ic9fd698810ea569c465350154da40b85d24f805b@changeid>
In-Reply-To: <20191001160735.1.Ic9fd698810ea569c465350154da40b85d24f805b@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 2 Oct 2019 15:23:54 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UnZtGN142yUu-NzVG00P=1MZ-X3aY+cjrMRCnL2D8xFg@mail.gmail.com>
Message-ID: <CAD=FV=UnZtGN142yUu-NzVG00P=1MZ-X3aY+cjrMRCnL2D8xFg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Use interpolated brightness tables
 for veyron
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_152409_047108_E140C548 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Tue, Oct 1, 2019 at 4:07 PM Matthias Kaehlcke <mka@chromium.org> wrote:
> --- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> @@ -39,39 +39,8 @@
>
>  &backlight {
>         /* Minnie panel PWM must be >= 1%, so start non-zero brightness at 3 */
> -       brightness-levels = <
> -                         0   3   4   5   6   7
> -                         8   9  10  11  12  13  14  15
> -                        16  17  18  19  20  21  22  23
> -                        24  25  26  27  28  29  30  31
> -                        32  33  34  35  36  37  38  39
> -                        40  41  42  43  44  45  46  47
> -                        48  49  50  51  52  53  54  55
> -                        56  57  58  59  60  61  62  63
> -                        64  65  66  67  68  69  70  71
> -                        72  73  74  75  76  77  78  79
> -                        80  81  82  83  84  85  86  87
> -                        88  89  90  91  92  93  94  95
> -                        96  97  98  99 100 101 102 103
> -                       104 105 106 107 108 109 110 111
> -                       112 113 114 115 116 117 118 119
> -                       120 121 122 123 124 125 126 127
> -                       128 129 130 131 132 133 134 135
> -                       136 137 138 139 140 141 142 143
> -                       144 145 146 147 148 149 150 151
> -                       152 153 154 155 156 157 158 159
> -                       160 161 162 163 164 165 166 167
> -                       168 169 170 171 172 173 174 175
> -                       176 177 178 179 180 181 182 183
> -                       184 185 186 187 188 189 190 191
> -                       192 193 194 195 196 197 198 199
> -                       200 201 202 203 204 205 206 207
> -                       208 209 210 211 212 213 214 215
> -                       216 217 218 219 220 221 222 223
> -                       224 225 226 227 228 229 230 231
> -                       232 233 234 235 236 237 238 239
> -                       240 241 242 243 244 245 246 247
> -                       248 249 250 251 252 253 254 255>;
> +       brightness-levels = <3 255>;
> +       num-interpolated-steps = <251>;

I _think_ you want:

brightness-levels = <0 3 255>;
num-interpolated-steps = <252>;

Specifically:

* It seems like you're intending to keep everything the same and just
have a more compact representation, right?  Looking through the values
in '/sys/class/backlight/backlight' on minnie shows differences before
and after your patch.

* I think you want brightness of 0 to match to PWM level 0.

* If I put in printouts in the code with your table, I see:

pwm-backlight backlight: new number of brightness levels: 252
pwm-backlight backlight: i=0, j=0, lc=0, value=3
pwm-backlight backlight: i=0, j=1, lc=1, value=4
...
pwm-backlight backlight: i=0, j=250, lc=250, value=253
pwm-backlight backlight: lc=251, data->levels[i]=255

...as you can see, you end up missing assigning a value of 254.


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
