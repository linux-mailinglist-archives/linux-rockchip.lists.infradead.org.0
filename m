Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D005AC4421
	for <lists+linux-rockchip@lfdr.de>; Wed,  2 Oct 2019 01:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U78wmXgMS7cRLNmbnZfTPjuakAAtGfiR9nestHk1vlQ=; b=nVlszih/oTTNa/
	Q76qrMsawXqOkyz0DGdWIVYGsHxoyBdZApHdXcQPZWYzu6z/4DIg8/RzFw/ZmZFoykPxC2uXXHyju
	AZYUpqFldeMy4ILSStqUHrUyw+jpKZEWAHN7bAaGA6qr+Kc1qTXnH7Uii/Hzwk8pa1ovHan8XSRWP
	lf5X9TH3wjJDNsVmGRFewTczv/uHWHczhJhojk2SpM3YJLWkrhDBM0MyubYsrR/Do7HKMV7CBdtA5
	OG34FcHpdfhF4GXjkWkgC5oh7wIm8DsJNaHvXGr/Qo7HydvSzpyaCnXcla0ALqSKDmUCPuNSyrL4q
	EeLbFTC3Naq6iLXVeYKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFRFJ-0004ix-49; Tue, 01 Oct 2019 23:07:53 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFRFF-0004hP-E0
 for linux-rockchip@lists.infradead.org; Tue, 01 Oct 2019 23:07:51 +0000
Received: by mail-pg1-x542.google.com with SMTP id y35so10785900pgl.1
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Oct 2019 16:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+Nf7W/69rcbuSCjp3T5cjBQS4Gd3M1DUTau7shEAvBo=;
 b=TqlVV4aRNdNJI/F4t+UvY1imNZCNpHkFYzdwAZRWjvxazB056mnYe1qHRWC6KUYq+z
 iSJNy6Os93x9pQOaW/lYUA3GScy2NV3Wlsk6OHQFWvbZS0F1cT0NtKV48S1jve0inqDy
 3weCrTIfx4rISC/82sP2LHIKHMYbaJANnsEwQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+Nf7W/69rcbuSCjp3T5cjBQS4Gd3M1DUTau7shEAvBo=;
 b=tHr90Yfn9uJnT3Rw8YPRIAJLcEfNWsFSBc5Dhet3mwJqm9aUoh00+gEK8F5zG7stpr
 398eklmPoi1SoAtuRxZ/CTLy/B2a/u97TQ2SX916f4/AGOMMKc58TxFGHFQ0a/TOBI97
 iA7z4ArlFEC8DH+Sd5fgAvcPycSwU6hfIwqQhb9gRhf8dd4LrEs49OmAo4oWijlTk0QO
 ulIY19gQD3LuKA2+Qbr77HaZJbdSDJxlzFAm7FPFNX+2M+XFIEMQxNYeKUsBpFxK4KsD
 0J5OJQuZtLsu6OISORzc3cyE6+D7bVaeQd262GknITthKKDyV5j/SIKV4qpBWYTOvjfq
 8AnQ==
X-Gm-Message-State: APjAAAVX1wyJDZrSorLDfB1t/+DRxzpDEk+E6FSPf+j+SOsfYxccLQ1r
 sYawloBcTVoRXLGoIwYXrCinZw==
X-Google-Smtp-Source: APXvYqwHNpEZQEilkNVmA3O5/XhCn/v8v+BBDw5V7KfhdqV5vHV6BNpopnq9XLH3i0O2OgOBpUpVkw==
X-Received: by 2002:a17:90a:170e:: with SMTP id
 z14mr721514pjd.119.1569971268070; 
 Tue, 01 Oct 2019 16:07:48 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id y10sm15879881pfe.148.2019.10.01.16.07.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Oct 2019 16:07:47 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: rockchip: Use interpolated brightness tables for
 veyron
Date: Tue,  1 Oct 2019 16:07:43 -0700
Message-Id: <20191001160735.1.Ic9fd698810ea569c465350154da40b85d24f805b@changeid>
X-Mailer: git-send-email 2.23.0.444.g18eeb5a265-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_160749_499553_2D7C6984 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Use interpolated brightness tables (added by commit 573fe6d1c25
("backlight: pwm_bl: Linear interpolation between
brightness-levels") for veyron, instead of specifying every single
step.

Another option would be to switch to a perceptual brightness curve
(CIE 1931), with the caveat that it would change the behavior of
the backlight. Also the concept of a minimum brightness level is
currently not supported for CIE 1931 curves.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron-edp.dtsi   | 35 ++--------------------
 arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 35 ++--------------------
 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 35 ++--------------------
 arch/arm/boot/dts/rk3288-veyron-tiger.dts  | 35 ++--------------------
 4 files changed, 8 insertions(+), 132 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-edp.dtsi b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
index 773bedca872f..e95c89fe0545 100644
--- a/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
@@ -41,39 +41,8 @@
 
 	backlight: backlight {
 		compatible = "pwm-backlight";
-		brightness-levels = <
-			  0   1   2   3   4   5   6   7
-			  8   9  10  11  12  13  14  15
-			 16  17  18  19  20  21  22  23
-			 24  25  26  27  28  29  30  31
-			 32  33  34  35  36  37  38  39
-			 40  41  42  43  44  45  46  47
-			 48  49  50  51  52  53  54  55
-			 56  57  58  59  60  61  62  63
-			 64  65  66  67  68  69  70  71
-			 72  73  74  75  76  77  78  79
-			 80  81  82  83  84  85  86  87
-			 88  89  90  91  92  93  94  95
-			 96  97  98  99 100 101 102 103
-			104 105 106 107 108 109 110 111
-			112 113 114 115 116 117 118 119
-			120 121 122 123 124 125 126 127
-			128 129 130 131 132 133 134 135
-			136 137 138 139 140 141 142 143
-			144 145 146 147 148 149 150 151
-			152 153 154 155 156 157 158 159
-			160 161 162 163 164 165 166 167
-			168 169 170 171 172 173 174 175
-			176 177 178 179 180 181 182 183
-			184 185 186 187 188 189 190 191
-			192 193 194 195 196 197 198 199
-			200 201 202 203 204 205 206 207
-			208 209 210 211 212 213 214 215
-			216 217 218 219 220 221 222 223
-			224 225 226 227 228 229 230 231
-			232 233 234 235 236 237 238 239
-			240 241 242 243 244 245 246 247
-			248 249 250 251 252 253 254 255>;
+		brightness-levels = <0 255>;
+		num-interpolated-steps = <254>;
 		default-brightness-level = <128>;
 		enable-gpios = <&gpio7 RK_PA2 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
index 56ad9a43a6c2..5e10cc644875 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jaq.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
@@ -21,39 +21,8 @@
 
 &backlight {
 	/* Jaq panel PWM must be >= 3%, so start non-zero brightness at 8 */
-	brightness-levels = <
-		  0
-		  8   9  10  11  12  13  14  15
-		 16  17  18  19  20  21  22  23
-		 24  25  26  27  28  29  30  31
-		 32  33  34  35  36  37  38  39
-		 40  41  42  43  44  45  46  47
-		 48  49  50  51  52  53  54  55
-		 56  57  58  59  60  61  62  63
-		 64  65  66  67  68  69  70  71
-		 72  73  74  75  76  77  78  79
-		 80  81  82  83  84  85  86  87
-		 88  89  90  91  92  93  94  95
-		 96  97  98  99 100 101 102 103
-		104 105 106 107 108 109 110 111
-		112 113 114 115 116 117 118 119
-		120 121 122 123 124 125 126 127
-		128 129 130 131 132 133 134 135
-		136 137 138 139 140 141 142 143
-		144 145 146 147 148 149 150 151
-		152 153 154 155 156 157 158 159
-		160 161 162 163 164 165 166 167
-		168 169 170 171 172 173 174 175
-		176 177 178 179 180 181 182 183
-		184 185 186 187 188 189 190 191
-		192 193 194 195 196 197 198 199
-		200 201 202 203 204 205 206 207
-		208 209 210 211 212 213 214 215
-		216 217 218 219 220 221 222 223
-		224 225 226 227 228 229 230 231
-		232 233 234 235 236 237 238 239
-		240 241 242 243 244 245 246 247
-		248 249 250 251 252 253 254 255>;
+	brightness-levels = <8 255>;
+	num-interpolated-steps = <246>;
 };
 
 &rk808 {
diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index 6b0e1cb1f681..503278e60d6b 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -39,39 +39,8 @@
 
 &backlight {
 	/* Minnie panel PWM must be >= 1%, so start non-zero brightness at 3 */
-	brightness-levels = <
-			  0   3   4   5   6   7
-			  8   9  10  11  12  13  14  15
-			 16  17  18  19  20  21  22  23
-			 24  25  26  27  28  29  30  31
-			 32  33  34  35  36  37  38  39
-			 40  41  42  43  44  45  46  47
-			 48  49  50  51  52  53  54  55
-			 56  57  58  59  60  61  62  63
-			 64  65  66  67  68  69  70  71
-			 72  73  74  75  76  77  78  79
-			 80  81  82  83  84  85  86  87
-			 88  89  90  91  92  93  94  95
-			 96  97  98  99 100 101 102 103
-			104 105 106 107 108 109 110 111
-			112 113 114 115 116 117 118 119
-			120 121 122 123 124 125 126 127
-			128 129 130 131 132 133 134 135
-			136 137 138 139 140 141 142 143
-			144 145 146 147 148 149 150 151
-			152 153 154 155 156 157 158 159
-			160 161 162 163 164 165 166 167
-			168 169 170 171 172 173 174 175
-			176 177 178 179 180 181 182 183
-			184 185 186 187 188 189 190 191
-			192 193 194 195 196 197 198 199
-			200 201 202 203 204 205 206 207
-			208 209 210 211 212 213 214 215
-			216 217 218 219 220 221 222 223
-			224 225 226 227 228 229 230 231
-			232 233 234 235 236 237 238 239
-			240 241 242 243 244 245 246 247
-			248 249 250 251 252 253 254 255>;
+	brightness-levels = <3 255>;
+	num-interpolated-steps = <251>;
 };
 
 &i2c_tunnel {
diff --git a/arch/arm/boot/dts/rk3288-veyron-tiger.dts b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
index 27557203ae33..e50367564dc6 100644
--- a/arch/arm/boot/dts/rk3288-veyron-tiger.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
@@ -23,39 +23,8 @@
 
 &backlight {
 	/* Tiger panel PWM must be >= 1%, so start non-zero brightness at 3 */
-	brightness-levels = <
-		  0   3   4   5   6   7
-		  8   9  10  11  12  13  14  15
-		 16  17  18  19  20  21  22  23
-		 24  25  26  27  28  29  30  31
-		 32  33  34  35  36  37  38  39
-		 40  41  42  43  44  45  46  47
-		 48  49  50  51  52  53  54  55
-		 56  57  58  59  60  61  62  63
-		 64  65  66  67  68  69  70  71
-		 72  73  74  75  76  77  78  79
-		 80  81  82  83  84  85  86  87
-		 88  89  90  91  92  93  94  95
-		 96  97  98  99 100 101 102 103
-		104 105 106 107 108 109 110 111
-		112 113 114 115 116 117 118 119
-		120 121 122 123 124 125 126 127
-		128 129 130 131 132 133 134 135
-		136 137 138 139 140 141 142 143
-		144 145 146 147 148 149 150 151
-		152 153 154 155 156 157 158 159
-		160 161 162 163 164 165 166 167
-		168 169 170 171 172 173 174 175
-		176 177 178 179 180 181 182 183
-		184 185 186 187 188 189 190 191
-		192 193 194 195 196 197 198 199
-		200 201 202 203 204 205 206 207
-		208 209 210 211 212 213 214 215
-		216 217 218 219 220 221 222 223
-		224 225 226 227 228 229 230 231
-		232 233 234 235 236 237 238 239
-		240 241 242 243 244 245 246 247
-		248 249 250 251 252 253 254 255>;
+	brightness-levels = <3 255>;
+	num-interpolated-steps = <251>;
 };
 
 &backlight_regulator {
-- 
2.23.0.444.g18eeb5a265-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
