Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B3AC951E
	for <lists+linux-rockchip@lfdr.de>; Thu,  3 Oct 2019 01:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHAaOuqATz6vzQxFATpZAEI4j2R+yJdLCa0pzV2Rzpo=; b=h6v8EdalD8pZEw
	07i93s0TTHZ4WXCi6vHjVnOXY2F9yHrLP/o8BLX9WW+1i7jojgakfduS/NW4VVuWED52XQt8BuVhg
	4xyzuTBxILj75zkz8UXSbTuaiW7X41wjIHZQ+CmlpwYAz/6xHF9WFcxbFCSmN5Njf3HmQcVnKWOk0
	9iRFcovEYiOE5sPwOocizUALYv8WBzZ2s2iXU5UDLjk/2CP8tLspFamGyLF4Uz3UKTC7BUt5Tb8U5
	CVTjq8Ei2PEr/uMqMR//cMcEYYnSRAFaCmAqXJbbkAwzqfjq1lAgIr+J91pun7Tx/1GT8WFrDxqWg
	25XCelPuxzAeELCdGQ6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFoIV-0007H3-Is; Wed, 02 Oct 2019 23:44:43 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFoIR-0007Fo-GC
 for linux-rockchip@lists.infradead.org; Wed, 02 Oct 2019 23:44:41 +0000
Received: by mail-pg1-x542.google.com with SMTP id c17so584093pgg.4
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Oct 2019 16:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9o+aVMafZNh1ZBc9I6ckxlik1QiG/UvW5Wt+nH2rOMs=;
 b=dAaTHI5NhKSOqh6X6vkUfZ7fxdK8NudPU+TFuLPA2/jL2ZjXBajNS/ZZXlY0LtMGim
 5jl36gvqdRy5B9s4xlzgNLd4mMLzy6DbGCqCMtrfoByESBlb9hYL3ufD/mroNDBvKsP6
 U54jM3ho8xbwaGpnQ3U7OYJIiZ3ZqPnpCsQQw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9o+aVMafZNh1ZBc9I6ckxlik1QiG/UvW5Wt+nH2rOMs=;
 b=HqrT4a/Rw70zjOh26XRDVM6mfSBJ0Tmtvnf60P0s2pPJc7CDN5mAtaQM1K5GgsnWyC
 ogmkyO0QmsKucl4OQZ3/dTS6/I/suob3UWQIaiW5I7XVxUgrNy3LBC57tX/GUraGhG/P
 RwXyDFPruwTe7CChh1JQCXoBpKZO/7V8aEA+Nt8K30ziSPhcNcEYh+4GYtMwq1v/hKB5
 NUa+38x/PIAHROpMftwuMcD+GOFIWLXlDEoxyINLU7ss1zJOHnE93UCndJ8hk2m+3Rbi
 8tIOfY3Z4I91owZtiXSxu7z8uzfTczTf/8ar7+usjYjmVH0TsCjEWjNkh3K0dUIAethd
 MDGg==
X-Gm-Message-State: APjAAAXAJJjEXfgQlnkr2K3M47bA8YiyRJLEZCUQ8lF26stjD3nQ8oyT
 EysuTzEPSHNQM2i5HXbELndl2Q==
X-Google-Smtp-Source: APXvYqx7tAiFYBlhceMShOLU4glxP11l0ZXEXx/4CKfroBA38HHANDXcLnns13A63AD43NhZQaLhQA==
X-Received: by 2002:a62:b40a:: with SMTP id h10mr7621495pfn.88.1570059878236; 
 Wed, 02 Oct 2019 16:44:38 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id b22sm552757pfo.85.2019.10.02.16.44.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Oct 2019 16:44:37 -0700 (PDT)
Date: Wed, 2 Oct 2019 16:44:36 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Use interpolated brightness tables
 for veyron
Message-ID: <20191002234436.GI87296@google.com>
References: <20191001160735.1.Ic9fd698810ea569c465350154da40b85d24f805b@changeid>
 <CAD=FV=UnZtGN142yUu-NzVG00P=1MZ-X3aY+cjrMRCnL2D8xFg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=UnZtGN142yUu-NzVG00P=1MZ-X3aY+cjrMRCnL2D8xFg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_164439_541655_C753CD87 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

On Wed, Oct 02, 2019 at 03:23:54PM -0700, Doug Anderson wrote:
> Hi,
> 
> On Tue, Oct 1, 2019 at 4:07 PM Matthias Kaehlcke <mka@chromium.org> wrote:
> > --- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> > +++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
> > @@ -39,39 +39,8 @@
> >
> >  &backlight {
> >         /* Minnie panel PWM must be >= 1%, so start non-zero brightness at 3 */
> > -       brightness-levels = <
> > -                         0   3   4   5   6   7
> > -                         8   9  10  11  12  13  14  15
> > -                        16  17  18  19  20  21  22  23
> > -                        24  25  26  27  28  29  30  31
> > -                        32  33  34  35  36  37  38  39
> > -                        40  41  42  43  44  45  46  47
> > -                        48  49  50  51  52  53  54  55
> > -                        56  57  58  59  60  61  62  63
> > -                        64  65  66  67  68  69  70  71
> > -                        72  73  74  75  76  77  78  79
> > -                        80  81  82  83  84  85  86  87
> > -                        88  89  90  91  92  93  94  95
> > -                        96  97  98  99 100 101 102 103
> > -                       104 105 106 107 108 109 110 111
> > -                       112 113 114 115 116 117 118 119
> > -                       120 121 122 123 124 125 126 127
> > -                       128 129 130 131 132 133 134 135
> > -                       136 137 138 139 140 141 142 143
> > -                       144 145 146 147 148 149 150 151
> > -                       152 153 154 155 156 157 158 159
> > -                       160 161 162 163 164 165 166 167
> > -                       168 169 170 171 172 173 174 175
> > -                       176 177 178 179 180 181 182 183
> > -                       184 185 186 187 188 189 190 191
> > -                       192 193 194 195 196 197 198 199
> > -                       200 201 202 203 204 205 206 207
> > -                       208 209 210 211 212 213 214 215
> > -                       216 217 218 219 220 221 222 223
> > -                       224 225 226 227 228 229 230 231
> > -                       232 233 234 235 236 237 238 239
> > -                       240 241 242 243 244 245 246 247
> > -                       248 249 250 251 252 253 254 255>;
> > +       brightness-levels = <3 255>;
> > +       num-interpolated-steps = <251>;
> 
> I _think_ you want:
> 
> brightness-levels = <0 3 255>;
> num-interpolated-steps = <252>;
> 
> Specifically:
> 
> * It seems like you're intending to keep everything the same and just
> have a more compact representation, right?

Ideally yes, I thought we were missing 1 level due to the 0 step being
missing, but it's actually 2, since I interpreted 'num-interpolated-steps'
as the number between two values in the table, however it is this number +1.

> Looking through the values in '/sys/class/backlight/backlight' on
> minnie shows differences before and after your patch.
> 
> * I think you want brightness of 0 to match to PWM level 0.

For level 0 that was actually given, due to

pwm_backlight_update_status()
{
  ..
  if (brightness > 0) {
    ...
  } else
    pwm_backlight_power_off(pb);
  ...
}

but we're slightly off for the rest of the levels.

> * If I put in printouts in the code with your table, I see:
> 
> pwm-backlight backlight: new number of brightness levels: 252
> pwm-backlight backlight: i=0, j=0, lc=0, value=3
> pwm-backlight backlight: i=0, j=1, lc=1, value=4
> ...
> pwm-backlight backlight: i=0, j=250, lc=250, value=253
> pwm-backlight backlight: lc=251, data->levels[i]=255
> 
> ...as you can see, you end up missing assigning a value of 254.

Thanks for investigating. With 'num-interpolated-steps' increased
by one this is fixed, though we are still missing one level at the
beginning of the table. I didn't expect 'brightness-levels = <0 3 255>'
to work, since there are less than 252/251 integer numbers between 0
and 3, but the code actually accounts for that case and just interprets
it as a single step, which is what we want.

Long story short: you are right, we want

brightness-levels = <0 3 255>;
num-interpolated-steps = <252>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
